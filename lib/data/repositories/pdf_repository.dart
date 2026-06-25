import 'dart:math' as math;

import 'package:drift/drift.dart';
import 'package:file_selector/file_selector.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path/path.dart' as p;

import '../database/app_database.dart';
import '../database/database_provider.dart';
import 'pdf_source.dart';
import 'pdf_storage.dart';

class PdfRepository {
  PdfRepository(this._db) : _storage = createPdfStorage(_db);

  final AppDatabase _db;
  final PdfStorage _storage;

  Stream<List<Pdf>> watchPdfs() => _db.watchPdfs();

  Future<Pdf?> pickAndImportPdf() async {
    const typeGroup = XTypeGroup(
      label: 'PDF',
      extensions: ['pdf'],
      mimeTypes: ['application/pdf'],
      uniformTypeIdentifiers: ['com.adobe.pdf'],
    );
    final file = await openFile(
      acceptedTypeGroups: [typeGroup],
      confirmButtonText: 'Import',
    );
    if (file == null) return null;
    return importPdf(file);
  }

  Future<Pdf> importPdf(XFile source) async {
    final prepared = await _storage.prepareImport(
      source: source,
      preferredFileName: _sanitizePdfFileName(source.name),
    );
    final title = _titleFromFileName(source.name);
    final now = DateTime.now().millisecondsSinceEpoch;
    final companion = PdfsCompanion.insert(
      title: title,
      processingStatus: 'READY',
      createdAt: now,
      pageCount: Value(prepared.pageCount),
      lastOpenedAt: Value(now),
      localFileName: Value(prepared.fileName),
      contentFormat: const Value('PDF'),
    );
    final id = await _db.into(_db.pdfs).insert(companion);
    await prepared.commit(id);
    await _db.refreshAchievements();
    return (_db.select(
      _db.pdfs,
    )..where((pdf) => pdf.id.equals(id))).getSingle();
  }

  Future<PdfDocumentSource?> resolvePdfSource(Pdf pdf) => _storage.resolve(pdf);

  Future<void> updateReadingProgress(
    Pdf pdf, {
    required int pageNumber,
    int? pageCount,
  }) async {
    final current =
        await (_db.select(
          _db.pdfs,
        )..where((row) => row.id.equals(pdf.id))).getSingleOrNull() ??
        pdf;
    final total = pageCount ?? current.pageCount ?? pageNumber;
    final previousTrackedPages = total <= 0
        ? 0
        : ((current.progression / 100) * total).floor();
    final trackedPages = math.max(previousTrackedPages, pageNumber);
    final pageDelta = math.max(0, trackedPages - previousTrackedPages);
    final progression = total <= 0
        ? 0
        : ((trackedPages / total) * 100).round().clamp(0, 100);
    await (_db.update(_db.pdfs)..where((row) => row.id.equals(pdf.id))).write(
      PdfsCompanion(
        progression: Value(progression),
        pageCount: pageCount == null ? const Value.absent() : Value(pageCount),
        lastOpenedAt: Value(DateTime.now().millisecondsSinceEpoch),
      ),
    );
    if (pageDelta > 0) await _db.recordStudyActivity(pagesRead: pageDelta);
  }

  String _sanitizePdfFileName(String name) {
    final raw = name.trim().isEmpty ? 'studyhub-document.pdf' : name.trim();
    final base = p
        .basename(raw)
        .replaceAll(RegExp(r'[<>:"/\\|?*\x00-\x1F]'), '_');
    return base.toLowerCase().endsWith('.pdf') ? base : '$base.pdf';
  }

  String _titleFromFileName(String name) {
    final title = p
        .basenameWithoutExtension(name)
        .replaceAll(RegExp(r'[_-]+'), ' ')
        .trim();
    return title.isEmpty ? 'Untitled PDF' : title;
  }
}

final pdfRepositoryProvider = Provider<PdfRepository>(
  (ref) => PdfRepository(ref.watch(appDatabaseProvider)),
);
