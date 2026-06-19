import 'dart:convert';

enum ContentType {
  text,
  important,
  clinicalPearl,
  mechanism,
  analogy,
  image,
  imageExplanation,
  list,
  clinicalScenario,
  highYield,
  summaryBox,
  comparisonTable,
  table,
  takeaway,
  step,
  pathway,
  mnemonic,
  defaultType;

  static ContentType fromJson(Object? raw) {
    final value = raw?.toString().toUpperCase();
    return switch (value) {
      'TEXT' => ContentType.text,
      'IMPORTANT' => ContentType.important,
      'CLINICAL_PEARL' => ContentType.clinicalPearl,
      'MECHANISM' => ContentType.mechanism,
      'ANALOGY' => ContentType.analogy,
      'IMAGE' => ContentType.image,
      'IMAGE_EXPLANATION' => ContentType.imageExplanation,
      'LIST' => ContentType.list,
      'CLINICAL_SCENARIO' => ContentType.clinicalScenario,
      'HIGH_YIELD' => ContentType.highYield,
      'SUMMARY_BOX' => ContentType.summaryBox,
      'COMPARISON_TABLE' => ContentType.comparisonTable,
      'TABLE' => ContentType.table,
      'TAKEAWAY' => ContentType.takeaway,
      'STEP' => ContentType.step,
      'PATHWAY' => ContentType.pathway,
      'MNEMONIC' => ContentType.mnemonic,
      _ => ContentType.defaultType,
    };
  }

  String get wireName => switch (this) {
        ContentType.text => 'TEXT',
        ContentType.important => 'IMPORTANT',
        ContentType.clinicalPearl => 'CLINICAL_PEARL',
        ContentType.mechanism => 'MECHANISM',
        ContentType.analogy => 'ANALOGY',
        ContentType.image => 'IMAGE',
        ContentType.imageExplanation => 'IMAGE_EXPLANATION',
        ContentType.list => 'LIST',
        ContentType.clinicalScenario => 'CLINICAL_SCENARIO',
        ContentType.highYield => 'HIGH_YIELD',
        ContentType.summaryBox => 'SUMMARY_BOX',
        ContentType.comparisonTable => 'COMPARISON_TABLE',
        ContentType.table => 'TABLE',
        ContentType.takeaway => 'TAKEAWAY',
        ContentType.step => 'STEP',
        ContentType.pathway => 'PATHWAY',
        ContentType.mnemonic => 'MNEMONIC',
        ContentType.defaultType => 'DEFAULT',
      };
}

enum LessonMode {
  find('FIND', 'آموزش'),
  summary('SUMMARY', 'خلاصه'),
  enrich('ENRICH', 'تخصصی'),
  quiz('QUIZ', 'کوییز');

  const LessonMode(this.key, this.label);

  final String key;
  final String label;

  static const defaultOrder = [
    LessonMode.find,
    LessonMode.summary,
    LessonMode.enrich,
    LessonMode.quiz,
  ];

  static LessonMode? from(String? raw) {
    if (raw == null) return null;
    return defaultOrder
        .where((mode) => mode.key.toLowerCase() == raw.toLowerCase())
        .firstOrNull;
  }
}

class ContentValue {
  const ContentValue({this.lines = const [], this.isList = false});

  final List<String> lines;
  final bool isList;

  String get text => lines.join('\n');
  bool get isBlank => lines.every((line) => line.trim().isEmpty);

  factory ContentValue.fromJson(Object? json) {
    if (json is List) {
      return ContentValue(
        lines: json.map((item) => item?.toString() ?? '').toList(),
        isList: true,
      );
    }
    if (json == null) return const ContentValue();
    return ContentValue(lines: [json.toString()]);
  }

  Object toJson() => isList ? lines : text;
}

class TableData {
  const TableData({this.headers = const [], this.rows = const []});

  final List<String> headers;
  final List<List<String>> rows;

  factory TableData.fromJson(Object? json) {
    final map = json.asMap;
    return TableData(
      headers: map.list('headers').map((item) => item.toString()).toList(),
      rows: map
          .list('rows')
          .map((row) => row is List ? row.map((cell) => cell.toString()).toList() : <String>[])
          .toList(),
    );
  }

  Map<String, Object> toJson() => {'headers': headers, 'rows': rows};
}

class ContentBlock {
  const ContentBlock({
    this.id = '',
    this.type = ContentType.text,
    this.title,
    this.content,
    this.imageFileName,
    this.tableData,
  });

  final String id;
  final ContentType type;
  final String? title;
  final ContentValue? content;
  final String? imageFileName;
  final TableData? tableData;

  factory ContentBlock.fromJson(Object? json) {
    final map = json.asMap;
    return ContentBlock(
      id: map.string('id'),
      type: ContentType.fromJson(map['type']),
      title: map.nullableString('title'),
      content: map.containsKey('content') ? ContentValue.fromJson(map['content']) : null,
      imageFileName: map.nullableString('imageFileName'),
      tableData: map.containsKey('tableData') ? TableData.fromJson(map['tableData']) : null,
    );
  }

  Map<String, Object?> toJson() => {
        'id': id,
        'type': type.wireName,
        'title': title,
        'content': content?.toJson(),
        'imageFileName': imageFileName,
        'tableData': tableData?.toJson(),
      };
}

class LessonFlashcard {
  const LessonFlashcard({
    this.id = '',
    this.question = '',
    this.answer = '',
    this.difficulty,
  });

  final String id;
  final String question;
  final String answer;
  final String? difficulty;

  factory LessonFlashcard.fromJson(Object? json) {
    final map = json.asMap;
    return LessonFlashcard(
      id: map.string('id'),
      question: map.string('question'),
      answer: map.string('answer'),
      difficulty: map.nullableString('difficulty'),
    );
  }

  Map<String, Object?> toJson() => {
        'id': id,
        'question': question,
        'answer': answer,
        'difficulty': difficulty,
      };
}

class QuizQuestion {
  const QuizQuestion({
    this.id = '',
    this.question = '',
    this.options = const [],
    this.correctAnswer = 0,
    this.explanation = '',
  });

  final String id;
  final String question;
  final List<String> options;
  final int correctAnswer;
  final String explanation;

  factory QuizQuestion.fromJson(Object? json) {
    final map = json.asMap;
    return QuizQuestion(
      id: map.string('id'),
      question: map.string('question'),
      options: map.list('options').map((item) => item.toString()).toList(),
      correctAnswer: map.intValue('correctAnswer'),
      explanation: map.string('explanation'),
    );
  }

  Map<String, Object> toJson() => {
        'id': id,
        'question': question,
        'options': options,
        'correctAnswer': correctAnswer,
        'explanation': explanation,
      };
}

class LessonSection {
  const LessonSection({
    this.id = '',
    this.title = '',
    this.subtitle,
    this.blocks = const [],
    this.flashcards = const [],
  });

  final String id;
  final String title;
  final String? subtitle;
  final List<ContentBlock> blocks;
  final List<LessonFlashcard> flashcards;

  factory LessonSection.fromJson(Object? json) {
    final map = json.asMap;
    return LessonSection(
      id: map.string('id'),
      title: map.string('title'),
      subtitle: map.nullableString('subtitle'),
      blocks: map.list('blocks').map(ContentBlock.fromJson).toList(),
      flashcards: map.list('flashcards').map(LessonFlashcard.fromJson).toList(),
    );
  }

  Map<String, Object?> toJson() => {
        'id': id,
        'title': title,
        'subtitle': subtitle,
        'blocks': blocks.map((block) => block.toJson()).toList(),
        'flashcards': flashcards.map((card) => card.toJson()).toList(),
      };
}

class LessonData {
  const LessonData({
    this.title = '',
    this.author,
    this.description,
    this.sections = const [],
    this.quizQuestions = const [],
    this.flashcards = const [],
    this.contributors,
  });

  final String title;
  final String? author;
  final String? description;
  final List<LessonSection> sections;
  final List<QuizQuestion> quizQuestions;
  final List<LessonFlashcard> flashcards;
  final Object? contributors;

  factory LessonData.fromJson(Object? json) {
    final map = json.asMap;
    return LessonData(
      title: map.string('title'),
      author: map.nullableString('author'),
      description: map.nullableString('description'),
      sections: map.list('sections').map(LessonSection.fromJson).toList(),
      quizQuestions: map.list('quizQuestions').map(QuizQuestion.fromJson).toList(),
      flashcards: map.list('flashcards').map(LessonFlashcard.fromJson).toList(),
      contributors: map['contributors'],
    );
  }

  factory LessonData.fromJsonString(String json) {
    if (json.trim().isEmpty) return const LessonData();
    return LessonData.fromJson(jsonDecode(json));
  }

  String toJsonString() => jsonEncode(toJson());

  Map<String, Object?> toJson() => {
        'title': title,
        'author': author,
        'description': description,
        'sections': sections.map((section) => section.toJson()).toList(),
        'quizQuestions': quizQuestions.map((question) => question.toJson()).toList(),
        'flashcards': flashcards.map((card) => card.toJson()).toList(),
        'contributors': contributors,
      };
}

class CourseNode {
  const CourseNode({
    this.id = '',
    this.title = '',
    this.type = 'SECTION',
    this.hasContent = false,
    this.children = const [],
  });

  final String id;
  final String title;
  final String type;
  final bool hasContent;
  final List<CourseNode> children;

  bool get isChapter => type.toUpperCase() == 'CHAPTER';

  factory CourseNode.fromJson(Object? json) {
    final map = json.asMap;
    return CourseNode(
      id: map.string('id'),
      title: map.string('title'),
      type: map.string('type', fallback: 'SECTION'),
      hasContent: map.boolValue('hasContent'),
      children: map.list('children').map(CourseNode.fromJson).toList(),
    );
  }

  Map<String, Object> toJson() => {
        'id': id,
        'title': title,
        'type': type,
        'hasContent': hasContent,
        'children': children.map((node) => node.toJson()).toList(),
      };
}

class ChapterInfo {
  const ChapterInfo({this.id = '', this.title = '', this.hasContent = false});

  final String id;
  final String title;
  final bool hasContent;

  factory ChapterInfo.fromJson(Object? json) {
    final map = json.asMap;
    return ChapterInfo(
      id: map.string('id'),
      title: map.string('title'),
      hasContent: map.boolValue('hasContent'),
    );
  }

  Map<String, Object> toJson() => {
        'id': id,
        'title': title,
        'hasContent': hasContent,
      };
}

extension _ObjectMap on Object? {
  Map<String, dynamic> get asMap {
    final value = this;
    if (value is Map<String, dynamic>) return value;
    if (value is Map) return value.map((key, value) => MapEntry(key.toString(), value));
    return const {};
  }
}

extension _JsonMapHelpers on Map<String, dynamic> {
  String string(String key, {String fallback = ''}) => this[key]?.toString() ?? fallback;
  String? nullableString(String key) => this[key]?.toString();
  int intValue(String key, {int fallback = 0}) {
    final value = this[key];
    if (value is int) return value;
    return int.tryParse(value?.toString() ?? '') ?? fallback;
  }

  bool boolValue(String key, {bool fallback = false}) {
    final value = this[key];
    if (value is bool) return value;
    if (value is num) return value != 0;
    if (value is String) return value.toLowerCase() == 'true' || value == '1';
    return fallback;
  }

  List<dynamic> list(String key) {
    final value = this[key];
    return value is List ? value : const [];
  }
}

extension _FirstOrNull<T> on Iterable<T> {
  T? get firstOrNull => isEmpty ? null : first;
}
