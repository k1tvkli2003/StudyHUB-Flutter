import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';

import '../../data/repositories/content_repository.dart';
import '../../data/repositories/ocr_repository.dart';
import '../../data/repositories/pdf_repository.dart';
import '../../design_system/studyhub_components.dart';
import '../shared/screen_frame.dart';

final _libraryPdfsProvider = StreamProvider(
  (ref) => ref.watch(pdfRepositoryProvider).watchPdfs(),
);
final _libraryCoursesProvider = StreamProvider(
  (ref) => ref.watch(contentRepositoryProvider).watchReadyCourses(),
);

class LibraryScreen extends ConsumerStatefulWidget {
  const LibraryScreen({super.key});

  @override
  ConsumerState<LibraryScreen> createState() => _LibraryScreenState();
}

class _LibraryScreenState extends ConsumerState<LibraryScreen> {
  int _segment = 0;
  bool _isImporting = false;
  bool _isOcrRunning = false;

  Future<void> _importPdf() async {
    if (_isImporting) return;
    setState(() => _isImporting = true);
    try {
      final pdf = await ref.read(pdfRepositoryProvider).pickAndImportPdf();
      if (!mounted || pdf == null) return;
      setState(() => _segment = 1);
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('Imported ${pdf.title}')));
      context.go('/pdf/${pdf.id}');
    } catch (error) {
      if (!mounted) return;
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('Could not import PDF: $error')));
    } finally {
      if (mounted) setState(() => _isImporting = false);
    }
  }

  Future<void> _runOcr() async {
    if (_isOcrRunning) return;
    setState(() => _isOcrRunning = true);
    try {
      final text = await ref.read(ocrRepositoryProvider).pickAndRecognizeText();
      if (!mounted || text == null) return;
      await showDialog<void>(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('OCR text'),
          content: SizedBox(
            width: 520,
            child: SingleChildScrollView(child: SelectableText(text)),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Close'),
            ),
            FilledButton.icon(
              onPressed: () async {
                await Clipboard.setData(ClipboardData(text: text));
                if (context.mounted) Navigator.of(context).pop();
              },
              icon: const Icon(Icons.copy_rounded),
              label: const Text('Copy'),
            ),
          ],
        ),
      );
    } catch (error) {
      if (!mounted) return;
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('$error')));
    } finally {
      if (mounted) setState(() => _isOcrRunning = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final pdfs = ref.watch(_libraryPdfsProvider).value ?? const [];
    final courses = ref.watch(_libraryCoursesProvider).value ?? const [];
    final repo = ref.read(contentRepositoryProvider);
    return ScreenFrame(
      children: [
        PremiumHeader(
          title: 'Library',
          subtitle: 'PDFs, courses, forks, and offline study state',
          trailing: Wrap(
            spacing: 8,
            children: [
              IconButton.filledTonal(
                onPressed: _isImporting ? null : _importPdf,
                icon: _isImporting
                    ? const SizedBox(
                        width: 18,
                        height: 18,
                        child: CircularProgressIndicator(strokeWidth: 2),
                      )
                    : const Icon(Icons.upload_file_rounded),
                tooltip: 'Import PDF',
              ),
              IconButton.filledTonal(
                onPressed: _isOcrRunning ? null : _runOcr,
                icon: _isOcrRunning
                    ? const SizedBox(
                        width: 18,
                        height: 18,
                        child: CircularProgressIndicator(strokeWidth: 2),
                      )
                    : const Icon(Icons.document_scanner_rounded),
                tooltip: 'OCR image',
              ),
              IconButton.filledTonal(
                onPressed: () =>
                    ref.read(contentRepositoryProvider).refreshCourses(),
                icon: const Icon(Icons.sync_rounded),
                tooltip: 'Refresh courses',
              ),
            ],
          ),
        ),
        SegmentedButton<int>(
          segments: const [
            ButtonSegment(
              value: 0,
              icon: Icon(Icons.travel_explore_rounded),
              label: Text('Courses'),
            ),
            ButtonSegment(
              value: 1,
              icon: Icon(Icons.picture_as_pdf_rounded),
              label: Text('My PDFs'),
            ),
          ],
          selected: {_segment},
          onSelectionChanged: (value) => setState(() => _segment = value.first),
        ),
        if (_segment == 0)
          ...courses.map(
            (course) => StudyCard(
              onTap: () async {
                final detail = await repo.getCourseDetail(course.id);
                final chapter = detail?.chapters
                    .where((c) => c.hasContent)
                    .firstOrNull;
                if (chapter != null && context.mounted) {
                  context.go(
                    '/lesson/${chapter.id}?courseId=${course.id}&mode=FIND',
                  );
                }
              },
              accent: Theme.of(context).colorScheme.primary,
              child: ListTile(
                contentPadding: EdgeInsets.zero,
                leading: CircleAvatar(
                  child: Text(course.title.characters.firstOrNull ?? 'S'),
                ),
                title: Text(
                  course.title,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                subtitle: Text(
                  '${course.titleEn}\n${course.chapterCount} chapters · ${course.lessonCount} lessons',
                ),
                isThreeLine: true,
                trailing: const Icon(Icons.arrow_forward_rounded),
              ),
            ),
          )
        else
          ...pdfs.map(
            (pdf) => StudyCard(
              onTap: () => context.go('/pdf/${pdf.id}'),
              accent: Theme.of(context).colorScheme.secondary,
              child: ListTile(
                contentPadding: EdgeInsets.zero,
                leading: const Icon(Icons.picture_as_pdf_rounded),
                title: Text(pdf.title),
                subtitle: Text(
                  '${pdf.pageCount ?? 0} pages · ${pdf.processingStatus}',
                ),
                trailing: const Icon(Icons.arrow_forward_rounded),
              ),
            ),
          ),
        if ((_segment == 0 && courses.isEmpty) ||
            (_segment == 1 && pdfs.isEmpty))
          StudyCard(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  _segment == 0 ? 'No cached courses yet' : 'No PDFs yet',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(height: 8),
                Text(
                  _segment == 0
                      ? 'Use refresh to pull the Supabase course catalog.'
                      : 'Import a PDF to copy it into StudyHUB and keep it available offline.',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onSurfaceVariant,
                  ),
                ),
                if (_segment == 1) ...[
                  const SizedBox(height: 14),
                  FilledButton.icon(
                    onPressed: _isImporting ? null : _importPdf,
                    icon: const Icon(Icons.upload_file_rounded),
                    label: const Text('Import PDF'),
                  ),
                ],
              ],
            ),
          ),
      ],
    );
  }
}

extension _FirstOrNull<T> on Iterable<T> {
  T? get firstOrNull => isEmpty ? null : first;
}
