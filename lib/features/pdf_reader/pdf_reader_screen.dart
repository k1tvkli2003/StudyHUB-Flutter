import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../data/database/database_provider.dart';
import '../../data/repositories/pdf_repository.dart';
import '../../design_system/studyhub_components.dart';

final _pdfProvider = FutureProvider.family((ref, int id) async {
  final db = ref.watch(appDatabaseProvider);
  return (db.select(db.pdfs)..where((pdf) => pdf.id.equals(id))).getSingleOrNull();
});

class PdfReaderScreen extends ConsumerWidget {
  const PdfReaderScreen({super.key, required this.pdfId});

  final int pdfId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pdf = ref.watch(_pdfProvider(pdfId));
    return Scaffold(
      body: CosmicBackground(
        child: SafeArea(
          child: pdf.when(
            data: (data) {
              if (data == null) return const Center(child: Text('PDF not found'));
              return Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: GlassPanel(
                      child: Row(
                        children: [
                          IconButton(onPressed: () => context.pop(), icon: const Icon(Icons.arrow_back_rounded)),
                          Expanded(child: Text(data.title, maxLines: 1, overflow: TextOverflow.ellipsis, style: Theme.of(context).textTheme.titleMedium)),
                          IconButton.filledTonal(onPressed: () {}, icon: const Icon(Icons.search_rounded)),
                          IconButton.filledTonal(onPressed: () {}, icon: const Icon(Icons.edit_rounded)),
                          IconButton.filledTonal(onPressed: () {}, icon: const Icon(Icons.chat_bubble_rounded)),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: FutureBuilder(
                      future: ref.read(pdfRepositoryProvider).resolvePdfFile(data),
                      builder: (context, snapshot) {
                        final file = snapshot.data;
                        if (snapshot.connectionState != ConnectionState.done) return const Center(child: CircularProgressIndicator());
                        if (file == null) {
                          return Center(
                            child: StudyCard(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  const Icon(Icons.picture_as_pdf_rounded, size: 48),
                                  const SizedBox(height: 12),
                                  Text('PDF file is not on this device', style: Theme.of(context).textTheme.titleLarge),
                                  const SizedBox(height: 8),
                                  const Text('Sync can restore the file when it exists in Supabase Storage.'),
                                ],
                              ),
                            ),
                          );
                        }
                        return _PdfSurface(filePath: file.path);
                      },
                    ),
                  ),
                ],
              );
            },
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (error, stack) => Center(child: Text('Failed to load PDF: $error')),
          ),
        ),
      ),
    );
  }
}

class _PdfSurface extends StatelessWidget {
  const _PdfSurface({required this.filePath});

  final String filePath;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: StudyCard(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(Icons.auto_stories_rounded, size: 54),
                const SizedBox(height: 12),
                Text('PDF engine ready', style: Theme.of(context).textTheme.titleLarge),
                const SizedBox(height: 8),
                Text(filePath, textAlign: TextAlign.center, style: Theme.of(context).textTheme.bodySmall),
                const SizedBox(height: 12),
                const Text('The pdfrx rendering package is installed; the next parity pass wires page bitmaps, text geometry, annotation canvas, and fork mode into this surface.'),
              ],
            ),
          ),
        ),
        Positioned(
          left: 16,
          top: 30,
          child: GlassPanel(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: const [
                Icon(Icons.touch_app_rounded),
                SizedBox(height: 14),
                Icon(Icons.pan_tool_rounded),
                SizedBox(height: 14),
                Icon(Icons.auto_fix_high_rounded),
                SizedBox(height: 14),
                Icon(Icons.volume_up_rounded),
              ],
            ),
          ),
        ),
        Positioned(
          right: 16,
          top: 30,
          child: GlassPanel(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: const [
                Icon(Icons.border_color_rounded),
                SizedBox(height: 14),
                Icon(Icons.highlight_rounded),
                SizedBox(height: 14),
                Icon(Icons.undo_rounded),
                SizedBox(height: 14),
                Icon(Icons.redo_rounded),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
