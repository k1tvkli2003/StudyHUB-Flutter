import 'dart:async';
import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;

import '../core/config/app_config.dart';
import '../data/repositories/providers.dart';

class CreditInfo {
  const CreditInfo({required this.toman, this.unit});

  final double toman;
  final double? unit;
}

class AiService {
  AiService({
    required String apiKey,
    this.baseUrl = AppConfig.avalaiBaseUrl,
    this.model = AppConfig.defaultAiModel,
    http.Client? client,
  })  : _apiKey = apiKey,
        _client = client ?? http.Client();

  final http.Client _client;
  final String _apiKey;
  final String baseUrl;
  final String model;

  bool get isConfigured => _apiKey.trim().isNotEmpty;

  Future<String> chatCompletion({
    required String userPrompt,
    String? systemPrompt,
    List<Map<String, String>> priorTurns = const [],
    double temperature = 0.7,
  }) async {
    if (!isConfigured) return '';
    final messages = <Map<String, String>>[
      if (systemPrompt != null && systemPrompt.trim().isNotEmpty) {'role': 'system', 'content': systemPrompt},
      ...priorTurns,
      {'role': 'user', 'content': userPrompt},
    ];
    final response = await _client
        .post(
          Uri.parse('${baseUrl.replaceFirst(RegExp(r'/$'), '')}/v1/chat/completions'),
          headers: {
            'Content-Type': 'application/json; charset=utf-8',
            'Authorization': 'Bearer $_apiKey',
          },
          body: jsonEncode({'model': model, 'messages': messages, 'temperature': temperature}),
        )
        .timeout(const Duration(seconds: 60));
    if (response.statusCode < 200 || response.statusCode >= 300) {
      throw AiException('AvalAI request failed: ${response.statusCode} ${response.body}');
    }
    final root = jsonDecode(response.body) as Map<String, dynamic>;
    final choices = root['choices'] as List? ?? const [];
    if (choices.isEmpty) return '';
    final message = (choices.first as Map)['message'] as Map?;
    return (message?['content']?.toString() ?? '').replaceAll('```json', '').replaceAll('```', '').trim();
  }

  Stream<String> chatStream({
    required String userPrompt,
    String? systemContext,
    List<Map<String, String>> priorTurns = const [],
  }) async* {
    final system = systemContext == null || systemContext.isEmpty
        ? null
        : "You are StudyHUB Assistant, a local-first study AI. Context of the user's library: $systemContext";
    final full = await chatCompletion(userPrompt: userPrompt, systemPrompt: system, priorTurns: priorTurns);
    final buffer = StringBuffer();
    for (final rune in full.runes) {
      buffer.writeCharCode(rune);
      yield buffer.toString();
      await Future<void>.delayed(const Duration(milliseconds: 8));
    }
  }

  Future<Map<String, Object?>> extractPdfData({
    required String text,
    required String title,
    int? pageCount,
  }) async {
    final prompt = '''
Analyze this document and extract: a concise, human-readable TITLE (2 to 6 words — a real descriptive title, NOT a filename), an array of main subjects covered, a progression score (0-100) estimating how far this document progresses into the subject matter, a difficulty level, the general content format, and a detailed outline of chapters or major sections with the STARTING PAGE of each.

The document text below is delimited with `[Page N]` markers that give the REAL page number where the following text appears. For every outline item you MUST set "page" to the page number of the nearest preceding `[Page N]` marker where that section actually begins.

The document is ${pageCount ?? "unknown"} pages long. Format your response strictly as JSON:
{"title":"Descriptive Title","subjects":["Subject1"],"progression":10,"difficultyLevel":"Intermediate","contentFormat":"Textbook","outline":[{"title":"Introduction","page":1}]}

Document text:
$text
''';
    final raw = await chatCompletion(userPrompt: prompt);
    return jsonDecode(raw) as Map<String, Object?>;
  }

  Future<List<Map<String, Object?>>> generateStudyPlan({
    required List<Map<String, Object?>> pdfs,
    required int targetDays,
    int startDay = 1,
  }) async {
    final allHaveTargets = pdfs.isNotEmpty && pdfs.every((pdf) => (pdf['targetDays'] as int? ?? 0) > 0);
    final effectiveGlobalTarget = allHaveTargets
        ? pdfs.map((pdf) => pdf['targetDays'] as int? ?? 0).fold<int>(targetDays, (a, b) => a > b ? a : b)
        : targetDays;
    final maxDay = pdfs.map((pdf) => pdf['targetDays'] as int? ?? 0).fold<int>(effectiveGlobalTarget, (a, b) => a > b ? a : b);
    final context = pdfs.map((pdf) {
      final id = pdf['id'];
      final title = pdf['title'];
      final pageCount = pdf['pageCount'] ?? 'Unknown';
      final examDay = (pdf['targetDays'] as int? ?? 0) > 0 ? pdf['targetDays'] : effectiveGlobalTarget;
      return 'ID: $id, Title: $title, Volume: $pageCount pages\n- The EXAM is on Day $examDay. Schedule NOTHING on exam day.\nOutline: ${pdf['outline'] ?? '[]'}';
    }).join('\n\n');
    final prompt = '''
You are an expert educational study planner. I have the following PDFs to study:

$context

Please create a comprehensive, rigorous, and highly logical study plan for the remaining uncompleted material. Follow these rules EXACTLY:
1. ALLOCATION WINDOW: Schedule strictly beginning from Day $startDay.
2. SMART INTENSITY: Earlier deadlines require higher intensity earlier.
3. THE EXAM DAY IS NOT A STUDY DAY. Finish first-time reading 1 to 3 days BEFORE the exam and use days before exam for broad review.
4. FULL COVERAGE: Reading sessions must cover page 1 through the exact last page.
5. DEADLINES: Respect each document exam day.
6. SPACING & MIXING: Mix 2 to 4 different PDFs per day when possible.
7. PRECISION: Assign topics and page ranges.
8. OUTPUT FORMAT: JSON array. Each item has day between $startDay and $maxDay, pdfId, pdfTitle, topic, timeframeMinutes, startPage, endPage.
''';
    final raw = await chatCompletion(userPrompt: prompt);
    final parsed = jsonDecode(raw) as List;
    return parsed.cast<Map>().map((item) => item.cast<String, Object?>()).toList();
  }

  Future<List<Map<String, Object?>>> generateReviewMaterial({
    required String text,
    required String type,
  }) async {
    final prompt = switch (type) {
      'quiz' =>
        'You are an expert examiner. Create up to 5 high-quality multiple choice questions based on the provided text. Return EXACTLY a JSON array with question, options, correctOptionIndex, answer. Text: $text',
      'infographic' =>
        'You are a visual learning expert. Create a text-based infographic based on the provided text. Return EXACTLY a JSON array containing one object with question and answer. Text: $text',
      _ =>
        'You are an expert tutor. Create up to 10 high-quality spaced repetition flashcards. Return EXACTLY a JSON array with question and answer. Text: $text',
    };
    final raw = await chatCompletion(userPrompt: prompt);
    final parsed = jsonDecode(raw) as List;
    return parsed.cast<Map>().map((item) => item.cast<String, Object?>()).toList();
  }

  Future<List<Map<String, Object?>>> generateSmartNotesForPage(String text) async {
    final prompt = '''
You are an expert tutor. Identify ONLY genuinely complex concepts, scientific terms, acronyms, or difficult words on this page that a learner would need help with, and ONLY those not already fully explained on the page.

Return EXACTLY a minimal JSON array of objects with keys "term" and "explanation". If there are no complex terms, return [].
The exact term MUST be physically present in the text verbatim.

Text: $text
''';
    final raw = await chatCompletion(userPrompt: prompt);
    final parsed = jsonDecode(raw) as List;
    return parsed.cast<Map>().map((item) => item.cast<String, Object?>()).toList();
  }

  Future<CreditInfo?> fetchBalance() async {
    if (!isConfigured) return null;
    final response = await _client.get(
      Uri.parse('https://api.avalai.ir/user/v1/credit'),
      headers: {'Authorization': 'Bearer $_apiKey', 'Content-Type': 'application/json'},
    );
    if (response.statusCode < 200 || response.statusCode >= 300) return null;
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    final toman = (json['remaining_irt'] as num?)?.toDouble();
    if (toman == null) return null;
    return CreditInfo(toman: toman, unit: (json['remaining_unit'] as num?)?.toDouble());
  }
}

class AiException implements Exception {
  AiException(this.message);

  final String message;

  @override
  String toString() => message;
}

final aiServiceProvider = FutureProvider<AiService>((ref) async {
  final settings = await ref.watch(settingsRepositoryProvider.future);
  return AiService(
    apiKey: await settings.apiKey(),
    baseUrl: settings.aiBaseUrl,
    model: settings.aiModel,
  );
});
