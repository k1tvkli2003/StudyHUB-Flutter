import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_math_fork/flutter_math.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../data/models/content_models.dart';
import '../../data/repositories/content_repository.dart';
import '../../design_system/studyhub_components.dart';

final _lessonProvider = FutureProvider.family<LessonData?, ({String chapterId, String mode})>((ref, args) {
  final mode = LessonMode.from(args.mode) ?? LessonMode.find;
  return ref.watch(contentRepositoryProvider).getLesson(args.chapterId, mode);
});

class LessonReaderScreen extends ConsumerStatefulWidget {
  const LessonReaderScreen({super.key, required this.chapterId, required this.courseId, required this.mode});

  final String chapterId;
  final String courseId;
  final String mode;

  @override
  ConsumerState<LessonReaderScreen> createState() => _LessonReaderScreenState();
}

class _LessonReaderScreenState extends ConsumerState<LessonReaderScreen> {
  late LessonMode _mode = LessonMode.from(widget.mode) ?? LessonMode.find;

  @override
  Widget build(BuildContext context) {
    final lesson = ref.watch(_lessonProvider((chapterId: widget.chapterId, mode: _mode.key)));
    final colors = Theme.of(context).colorScheme;
    return Scaffold(
      body: CosmicBackground(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 12, 12, 6),
                child: GlassPanel(
                  child: Row(
                    children: [
                      IconButton(onPressed: () => context.pop(), icon: const Icon(Icons.arrow_back_rounded)),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Lesson reader', style: Theme.of(context).textTheme.titleMedium),
                            Text(widget.chapterId, maxLines: 1, overflow: TextOverflow.ellipsis, style: TextStyle(color: colors.onSurfaceVariant, fontSize: 12)),
                          ],
                        ),
                      ),
                      IconButton.filledTonal(onPressed: () {}, icon: const Icon(Icons.volume_up_rounded), tooltip: 'TTS'),
                      IconButton.filledTonal(onPressed: () {}, icon: const Icon(Icons.chat_bubble_rounded), tooltip: 'Ask AI'),
                    ],
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
                child: Row(
                  children: [
                    for (final mode in LessonMode.defaultOrder) ...[
                      StudyChip(
                        label: mode.label,
                        selected: mode == _mode,
                        icon: switch (mode) {
                          LessonMode.find => Icons.school_rounded,
                          LessonMode.summary => Icons.notes_rounded,
                          LessonMode.enrich => Icons.psychology_rounded,
                          LessonMode.quiz => Icons.quiz_rounded,
                        },
                        onTap: () => setState(() => _mode = mode),
                      ),
                      const SizedBox(width: 8),
                    ],
                  ],
                ),
              ),
              Expanded(
                child: lesson.when(
                  data: (data) {
                    if (data == null) return const _ReaderEmpty();
                    return SelectionArea(
                      child: ListView(
                        padding: const EdgeInsets.fromLTRB(18, 10, 18, 32),
                        children: [
                          PremiumHeader(title: data.title.ifBlank('Untitled lesson'), subtitle: data.description),
                          const SizedBox(height: 16),
                          for (final section in data.sections) _SectionView(section: section),
                          if (data.quizQuestions.isNotEmpty) _QuizView(questions: data.quizQuestions),
                          if (data.flashcards.isNotEmpty) _FlashcardDeck(cards: data.flashcards),
                        ],
                      ),
                    );
                  },
                  loading: () => const Center(child: CircularProgressIndicator()),
                  error: (error, stack) => Center(child: Text('Lesson failed to load: $error')),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _SectionView extends StatelessWidget {
  const _SectionView({required this.section});

  final LessonSection section;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(section.title, style: Theme.of(context).textTheme.headlineSmall),
          if (section.subtitle != null) Text(section.subtitle!, style: TextStyle(color: Theme.of(context).colorScheme.onSurfaceVariant)),
          const SizedBox(height: 12),
          for (final block in section.blocks) Padding(padding: const EdgeInsets.only(bottom: 12), child: ContentBlockView(block: block)),
        ],
      ),
    );
  }
}

class ContentBlockView extends StatelessWidget {
  const ContentBlockView({super.key, required this.block});

  final ContentBlock block;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final accent = switch (block.type) {
      ContentType.important || ContentType.highYield => colors.error,
      ContentType.clinicalPearl || ContentType.mechanism => colors.tertiary,
      ContentType.analogy || ContentType.mnemonic => colors.secondary,
      ContentType.table || ContentType.comparisonTable => colors.primary,
      ContentType.image || ContentType.imageExplanation => colors.tertiary,
      _ => colors.primary,
    };
    return StudyCard(
      accent: accent,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(_iconFor(block.type), color: accent),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  block.title ?? _labelFor(block.type),
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(color: accent, fontWeight: FontWeight.w900),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          if (block.tableData != null) _TableBlock(data: block.tableData!),
          if (block.content != null && !block.content!.isBlank) _RichContent(value: block.content!),
          if (block.imageFileName != null) Text(block.imageFileName!, style: TextStyle(color: colors.onSurfaceVariant, fontFamily: 'JetBrainsMono')),
        ],
      ),
    );
  }

  IconData _iconFor(ContentType type) => switch (type) {
        ContentType.important => Icons.priority_high_rounded,
        ContentType.clinicalPearl => Icons.lightbulb_rounded,
        ContentType.mechanism => Icons.hub_rounded,
        ContentType.analogy => Icons.bolt_rounded,
        ContentType.image || ContentType.imageExplanation => Icons.image_rounded,
        ContentType.table || ContentType.comparisonTable => Icons.table_chart_rounded,
        _ => Icons.auto_stories_rounded,
      };

  String _labelFor(ContentType type) => switch (type) {
        ContentType.important => 'نکته مهم',
        ContentType.clinicalPearl => 'گوهره بالینی',
        ContentType.mechanism => 'سازوکار',
        ContentType.analogy => 'انگاره',
        ContentType.highYield => 'شاه‌بیت',
        ContentType.summaryBox => 'جمع‌بندی',
        ContentType.table || ContentType.comparisonTable => 'جدول',
        ContentType.takeaway => 'برداشت کلیدی',
        ContentType.step => 'گام',
        ContentType.pathway => 'مسیر',
        ContentType.mnemonic => 'یادمان',
        _ => 'درسنامه',
      };
}

class _RichContent extends StatelessWidget {
  const _RichContent({required this.value});

  final ContentValue value;

  @override
  Widget build(BuildContext context) {
    if (value.text.contains(r'$')) {
      final parts = value.text.split(r'$');
      return Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
          for (var i = 0; i < parts.length; i++)
            if (i.isOdd)
              Math.tex(parts[i], textStyle: Theme.of(context).textTheme.bodyLarge)
            else
              MarkdownBody(data: parts[i], selectable: true),
        ],
      );
    }
    if (value.isList) {
      return Column(
        children: [
          for (final line in value.lines)
            ListTile(
              dense: true,
              contentPadding: EdgeInsets.zero,
              leading: const Icon(Icons.circle, size: 9),
              title: MarkdownBody(data: line, selectable: true),
            ),
        ],
      );
    }
    return MarkdownBody(data: value.text, selectable: true);
  }
}

class _TableBlock extends StatelessWidget {
  const _TableBlock({required this.data});

  final TableData data;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: DataTable(
        columns: [for (final header in data.headers) DataColumn(label: Text(header))],
        rows: [
          for (final row in data.rows) DataRow(cells: [for (final cell in row) DataCell(Text(cell))]),
        ],
      ),
    );
  }
}

class _QuizView extends StatelessWidget {
  const _QuizView({required this.questions});

  final List<QuizQuestion> questions;

  @override
  Widget build(BuildContext context) {
    return StudyCard(
      accent: Theme.of(context).colorScheme.secondary,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Quiz', style: Theme.of(context).textTheme.titleLarge),
          for (final question in questions.take(5)) ListTile(title: Text(question.question), subtitle: Text(question.options.join(' · '))),
        ],
      ),
    );
  }
}

class _FlashcardDeck extends StatelessWidget {
  const _FlashcardDeck({required this.cards});

  final List<LessonFlashcard> cards;

  @override
  Widget build(BuildContext context) {
    return StudyCard(
      accent: Theme.of(context).colorScheme.tertiary,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Flashcards', style: Theme.of(context).textTheme.titleLarge),
          for (final card in cards.take(6)) ListTile(title: Text(card.question), subtitle: Text(card.answer)),
        ],
      ),
    );
  }
}

class _ReaderEmpty extends StatelessWidget {
  const _ReaderEmpty();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: StudyCard(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.cloud_off_rounded, size: 42),
            const SizedBox(height: 10),
            Text('Lesson is not cached yet', style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 6),
            Text('Refresh courses or connect to Supabase to load this lesson.'),
          ],
        ),
      ),
    );
  }
}

extension on String {
  String ifBlank(String fallback) => trim().isEmpty ? fallback : this;
}
