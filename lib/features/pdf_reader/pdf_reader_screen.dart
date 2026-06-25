import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:pdfrx/pdfrx.dart';

import '../../data/database/app_database.dart';
import '../../data/database/database_provider.dart';
import '../../data/repositories/pdf_repository.dart';
import '../../data/repositories/pdf_source.dart';
import '../../design_system/studyhub_components.dart';

final _pdfProvider = FutureProvider.family((ref, int id) async {
  final db = ref.watch(appDatabaseProvider);
  return (db.select(
    db.pdfs,
  )..where((pdf) => pdf.id.equals(id))).getSingleOrNull();
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
              if (data == null) {
                return const Center(child: Text('PDF not found'));
              }
              return Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: GlassPanel(
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () => context.pop(),
                            icon: const Icon(Icons.arrow_back_rounded),
                          ),
                          Expanded(
                            child: Text(
                              data.title,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: FutureBuilder(
                      future: ref
                          .read(pdfRepositoryProvider)
                          .resolvePdfSource(data),
                      builder: (context, snapshot) {
                        final source = snapshot.data;
                        if (snapshot.connectionState != ConnectionState.done) {
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        }
                        if (source == null) {
                          return Center(
                            child: StudyCard(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  const Icon(
                                    Icons.picture_as_pdf_rounded,
                                    size: 48,
                                  ),
                                  const SizedBox(height: 12),
                                  Text(
                                    'PDF file is not on this device',
                                    style: Theme.of(
                                      context,
                                    ).textTheme.titleLarge,
                                  ),
                                  const SizedBox(height: 8),
                                  const Text(
                                    'Sync can restore the file when it exists in Supabase Storage.',
                                  ),
                                ],
                              ),
                            ),
                          );
                        }
                        return _PdfSurface(pdf: data, source: source);
                      },
                    ),
                  ),
                ],
              );
            },
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (error, stack) =>
                Center(child: Text('Failed to load PDF: $error')),
          ),
        ),
      ),
    );
  }
}

class _PdfSurface extends ConsumerStatefulWidget {
  const _PdfSurface({required this.pdf, required this.source});

  final Pdf pdf;
  final PdfDocumentSource source;

  @override
  ConsumerState<_PdfSurface> createState() => _PdfSurfaceState();
}

class _PdfSurfaceState extends ConsumerState<_PdfSurface> {
  final _controller = PdfViewerController();
  final _searchController = TextEditingController();
  PdfTextSearcher? _searcher;
  int _currentPage = 1;
  int? _pageCount;
  bool _showSearch = false;
  bool _showTools = true;

  @override
  void initState() {
    super.initState();
    _controller.addListener(_onViewerChanged);
  }

  @override
  void dispose() {
    _controller.removeListener(_onViewerChanged);
    _searcher?.removeListener(_onSearchChanged);
    _searcher?.dispose();
    _searchController.dispose();
    super.dispose();
  }

  void _onViewerChanged() {
    if (mounted) setState(() {});
  }

  void _onSearchChanged() {
    if (mounted) setState(() {});
  }

  void _onViewerReady(PdfDocument document, PdfViewerController controller) {
    _pageCount = document.pages.length;
    _searcher ??= PdfTextSearcher(controller)..addListener(_onSearchChanged);
    ref
        .read(pdfRepositoryProvider)
        .updateReadingProgress(
          widget.pdf,
          pageNumber: _currentPage,
          pageCount: _pageCount,
        );
    if (mounted) setState(() {});
  }

  void _onPageChanged(int? pageNumber) {
    if (pageNumber == null) return;
    _currentPage = pageNumber;
    ref
        .read(pdfRepositoryProvider)
        .updateReadingProgress(
          widget.pdf,
          pageNumber: pageNumber,
          pageCount: _pageCount,
        );
    if (mounted) setState(() {});
  }

  void _startSearch(String value) {
    final query = value.trim();
    if (query.isEmpty) {
      _searcher?.resetTextSearch();
      return;
    }
    _searcher?.startTextSearch(
      query,
      goToFirstMatch: true,
      searchImmediately: query.length > 2,
    );
  }

  Future<void> _goToRelativePage(int delta) async {
    if (!_controller.isReady) return;
    final next = (_currentPage + delta).clamp(1, _controller.pageCount);
    await _controller.goToPage(pageNumber: next);
  }

  Future<void> _fitWidth() async {
    if (!_controller.isReady) return;
    final matrix = _controller.calcMatrixFitWidthForPage(
      pageNumber: _currentPage,
    );
    await _controller.goTo(matrix);
  }

  Future<void> _toggleBookmark() async {
    await ref
        .read(appDatabaseProvider)
        .toggleBookmark(
          pdfId: widget.pdf.id,
          pageNumber: _currentPage,
          title: 'Page $_currentPage',
          colorHex: '#5D6FEB',
        );
    if (!mounted) return;
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Updated bookmark for page $_currentPage.')),
    );
  }

  Future<void> _addSmartNote() async {
    final termController = TextEditingController();
    final explanationController = TextEditingController();
    final saved = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Smart note · page $_currentPage'),
        content: SizedBox(
          width: 520,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: termController,
                autofocus: true,
                decoration: const InputDecoration(labelText: 'Term'),
              ),
              const SizedBox(height: 10),
              TextField(
                controller: explanationController,
                minLines: 3,
                maxLines: 5,
                decoration: const InputDecoration(labelText: 'Explanation'),
              ),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: const Text('Cancel'),
          ),
          FilledButton.icon(
            onPressed: () => Navigator.of(context).pop(true),
            icon: const Icon(Icons.save_rounded),
            label: const Text('Save'),
          ),
        ],
      ),
    );
    final term = termController.text.trim();
    final explanation = explanationController.text.trim();
    termController.dispose();
    explanationController.dispose();
    if (saved != true || term.isEmpty || explanation.isEmpty) return;
    await ref
        .read(appDatabaseProvider)
        .addSmartNote(
          pdfId: widget.pdf.id,
          pageNumber: _currentPage,
          term: term,
          explanation: explanation,
          colorHex: '#5ED4A7',
        );
    if (!mounted) return;
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Saved smart note for page $_currentPage.')),
    );
  }

  String get _searchStatus {
    final searcher = _searcher;
    if (searcher == null) return '';
    if (searcher.isSearching) {
      final page = searcher.searchingPageNumber;
      final total = searcher.totalPageCount;
      return page != null && total != null
          ? 'Searching $page/$total'
          : 'Searching';
    }
    if (searcher.matches.isEmpty) {
      return _searchController.text.trim().isEmpty ? '' : 'No matches';
    }
    final index = (searcher.currentIndex ?? 0) + 1;
    return '$index/${searcher.matches.length}';
  }

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final zoomLabel = _controller.isReady
        ? '${(_controller.currentZoom * 100).round()}%'
        : '--';
    return Stack(
      children: [
        Positioned.fill(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(0),
            child: _buildPdfViewer(context, colors),
          ),
        ),
        Positioned(
          left: 14,
          right: 14,
          top: 12,
          child: AnimatedSwitcher(
            duration: const Duration(milliseconds: 180),
            child: _showSearch
                ? _SearchBar(
                    controller: _searchController,
                    status: _searchStatus,
                    onChanged: _startSearch,
                    onPrevious: () => _searcher?.goToPrevMatch(),
                    onNext: () => _searcher?.goToNextMatch(),
                    onClose: () {
                      _searcher?.resetTextSearch();
                      _searchController.clear();
                      setState(() => _showSearch = false);
                    },
                  )
                : _ReaderHud(
                    currentPage: _currentPage,
                    pageCount: _pageCount,
                    zoomLabel: zoomLabel,
                    onToggleTools: () =>
                        setState(() => _showTools = !_showTools),
                  ),
          ),
        ),
        Positioned(
          left: 16,
          top: 88,
          child: _showTools
              ? _ToolRail(
                  children: [
                    _RailButton(
                      icon: Icons.search_rounded,
                      tooltip: 'Search',
                      onPressed: () => setState(() => _showSearch = true),
                    ),
                    _RailButton(
                      icon: Icons.remove_rounded,
                      tooltip: 'Zoom out',
                      onPressed: _controller.isReady
                          ? () => _controller.zoomDown()
                          : null,
                    ),
                    _RailButton(
                      icon: Icons.add_rounded,
                      tooltip: 'Zoom in',
                      onPressed: _controller.isReady
                          ? () => _controller.zoomUp()
                          : null,
                    ),
                    _RailButton(
                      icon: Icons.fit_screen_rounded,
                      tooltip: 'Fit width',
                      onPressed: _controller.isReady ? _fitWidth : null,
                    ),
                  ],
                )
              : const SizedBox.shrink(),
        ),
        Positioned(
          right: 16,
          top: 88,
          child: _showTools
              ? _ToolRail(
                  children: [
                    _RailButton(
                      icon: Icons.keyboard_arrow_up_rounded,
                      tooltip: 'Previous page',
                      onPressed: _controller.isReady
                          ? () => _goToRelativePage(-1)
                          : null,
                    ),
                    _RailButton(
                      icon: Icons.keyboard_arrow_down_rounded,
                      tooltip: 'Next page',
                      onPressed: _controller.isReady
                          ? () => _goToRelativePage(1)
                          : null,
                    ),
                    _RailButton(
                      icon: Icons.select_all_rounded,
                      tooltip: 'Select text',
                      onPressed: _controller.isReady
                          ? () => _controller.textSelectionDelegate
                                .selectAllText()
                          : null,
                    ),
                    StreamBuilder<List<Bookmark>>(
                      stream: ref
                          .watch(appDatabaseProvider)
                          .watchBookmarksForPdf(widget.pdf.id),
                      builder: (context, snapshot) {
                        final bookmarked =
                            snapshot.data?.any(
                              (bookmark) => bookmark.pageNumber == _currentPage,
                            ) ??
                            false;
                        return _RailButton(
                          icon: bookmarked
                              ? Icons.bookmark_rounded
                              : Icons.bookmark_border_rounded,
                          tooltip: bookmarked
                              ? 'Remove bookmark'
                              : 'Bookmark page',
                          onPressed: _controller.isReady
                              ? _toggleBookmark
                              : null,
                        );
                      },
                    ),
                    StreamBuilder<List<SmartNote>>(
                      stream: ref
                          .watch(appDatabaseProvider)
                          .watchSmartNotesForPdfPage(
                            pdfId: widget.pdf.id,
                            pageNumber: _currentPage,
                          ),
                      builder: (context, snapshot) {
                        final count = snapshot.data?.length ?? 0;
                        return _RailButton(
                          icon: count > 0
                              ? Icons.sticky_note_2_rounded
                              : Icons.note_add_rounded,
                          tooltip: count > 0
                              ? '$count smart note(s)'
                              : 'Add smart note',
                          onPressed: _controller.isReady ? _addSmartNote : null,
                        );
                      },
                    ),
                    _RailButton(
                      icon: Icons.clear_rounded,
                      tooltip: 'Clear selection',
                      onPressed: _controller.isReady
                          ? () => _controller.textSelectionDelegate
                                .clearTextSelection()
                          : null,
                    ),
                  ],
                )
              : const SizedBox.shrink(),
        ),
      ],
    );
  }

  Widget _buildPdfViewer(BuildContext context, ColorScheme colors) {
    final params = PdfViewerParams(
      backgroundColor: Colors.transparent,
      margin: 12,
      minScale: 0.35,
      maxScale: 6,
      pageDropShadow: BoxShadow(
        color: colors.shadow.withOpacity(0.18),
        blurRadius: 20,
        offset: const Offset(0, 8),
      ),
      matchTextColor: colors.tertiary.withOpacity(0.32),
      activeMatchTextColor: colors.primary.withOpacity(0.42),
      onViewerReady: _onViewerReady,
      onPageChanged: _onPageChanged,
      pagePaintCallbacks: _searcher == null
          ? null
          : [_searcher!.pageTextMatchPaintCallback],
      loadingBannerBuilder: (context, downloaded, total) => Center(
        child: GlassPanel(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(
                width: 18,
                height: 18,
                child: CircularProgressIndicator(strokeWidth: 2),
              ),
              const SizedBox(width: 12),
              Text(
                total == null
                    ? 'Loading PDF'
                    : 'Loading ${((downloaded / total) * 100).round()}%',
              ),
            ],
          ),
        ),
      ),
      errorBannerBuilder: (context, error, stackTrace, ref) => Center(
        child: StudyCard(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.error_outline_rounded, size: 42),
              const SizedBox(height: 10),
              Text(
                'Could not open this PDF',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(height: 6),
              Text('$error', textAlign: TextAlign.center),
            ],
          ),
        ),
      ),
    );
    final bytes = widget.source.bytes;
    if (bytes != null) {
      return PdfViewer.data(
        bytes,
        sourceName: widget.source.sourceName,
        controller: _controller,
        params: params,
      );
    }
    return PdfViewer.file(
      widget.source.filePath!,
      controller: _controller,
      params: params,
    );
  }
}

class _ReaderHud extends StatelessWidget {
  const _ReaderHud({
    required this.currentPage,
    required this.pageCount,
    required this.zoomLabel,
    required this.onToggleTools,
  });

  final int currentPage;
  final int? pageCount;
  final String zoomLabel;
  final VoidCallback onToggleTools;

  @override
  Widget build(BuildContext context) {
    return GlassPanel(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      child: Row(
        children: [
          IconButton(
            onPressed: onToggleTools,
            icon: const Icon(Icons.tune_rounded),
            tooltip: 'Reader tools',
          ),
          Expanded(
            child: Text(
              'Page $currentPage${pageCount == null ? '' : ' of $pageCount'}',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.labelLarge,
            ),
          ),
          Text(zoomLabel, style: Theme.of(context).textTheme.labelLarge),
        ],
      ),
    );
  }
}

class _SearchBar extends StatelessWidget {
  const _SearchBar({
    required this.controller,
    required this.status,
    required this.onChanged,
    required this.onPrevious,
    required this.onNext,
    required this.onClose,
  });

  final TextEditingController controller;
  final String status;
  final ValueChanged<String> onChanged;
  final VoidCallback? onPrevious;
  final VoidCallback? onNext;
  final VoidCallback onClose;

  @override
  Widget build(BuildContext context) {
    return GlassPanel(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      child: Row(
        children: [
          const Icon(Icons.search_rounded),
          const SizedBox(width: 8),
          Expanded(
            child: TextField(
              controller: controller,
              autofocus: true,
              decoration: const InputDecoration(
                hintText: 'Search in PDF',
                border: InputBorder.none,
                isDense: true,
              ),
              textInputAction: TextInputAction.search,
              onChanged: onChanged,
            ),
          ),
          if (status.isNotEmpty)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Text(status),
            ),
          IconButton(
            onPressed: onPrevious,
            icon: const Icon(Icons.keyboard_arrow_up_rounded),
            tooltip: 'Previous match',
          ),
          IconButton(
            onPressed: onNext,
            icon: const Icon(Icons.keyboard_arrow_down_rounded),
            tooltip: 'Next match',
          ),
          IconButton(
            onPressed: onClose,
            icon: const Icon(Icons.close_rounded),
            tooltip: 'Close search',
          ),
        ],
      ),
    );
  }
}

class _ToolRail extends StatelessWidget {
  const _ToolRail({required this.children});

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return GlassPanel(
      padding: const EdgeInsets.all(6),
      child: Column(mainAxisSize: MainAxisSize.min, children: children),
    );
  }
}

class _RailButton extends StatelessWidget {
  const _RailButton({
    required this.icon,
    required this.tooltip,
    required this.onPressed,
  });

  final IconData icon;
  final String tooltip;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 42,
      height: 42,
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(icon),
        tooltip: tooltip,
      ),
    );
  }
}
