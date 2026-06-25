import 'package:file_selector/file_selector.dart';
import 'package:path/path.dart' as p;
import 'package:pdfrx/pdfrx.dart';

import '../database/app_database.dart';
import 'pdf_source.dart';

PdfStorage createPdfStorage(AppDatabase db) => PdfStorage(db);

class PdfStorage {
  const PdfStorage(this._db);

  final AppDatabase _db;

  Future<PreparedPdfImport> prepareImport({
    required XFile source,
    required String preferredFileName,
  }) async {
    final fileName = await _uniqueDatabaseFileName(preferredFileName);
    final bytes = await source.readAsBytes();
    final pageCount = await _readPageCount(
      PdfDocumentSource.bytes(sourceName: fileName, data: bytes),
    );
    return PreparedPdfImport(
      fileName: fileName,
      pageCount: pageCount,
      commit: (pdfId) =>
          _db.savePdfFileBlob(pdfId: pdfId, fileName: fileName, bytes: bytes),
    );
  }

  Future<PdfDocumentSource?> resolve(Pdf pdf) async {
    final blob = await _db.getPdfFileBlob(pdf.id);
    if (blob == null) return null;
    return PdfDocumentSource.bytes(sourceName: blob.fileName, data: blob.bytes);
  }

  Future<int?> _readPageCount(PdfDocumentSource source) async {
    PdfDocument? document;
    try {
      document = await PdfDocument.openData(
        source.bytes!,
        sourceName: source.sourceName,
      );
      return document.pages.length;
    } catch (_) {
      return null;
    } finally {
      await document?.dispose();
    }
  }

  Future<String> _uniqueDatabaseFileName(String baseName) async {
    final stem = p.basenameWithoutExtension(baseName);
    final extension = p.extension(baseName).isEmpty
        ? '.pdf'
        : p.extension(baseName);
    var candidate = '$stem$extension';
    var counter = 2;
    while (await _hasLocalFileName(candidate)) {
      candidate = '$stem-$counter$extension';
      counter++;
    }
    return candidate;
  }

  Future<bool> _hasLocalFileName(String fileName) async {
    final row = await (_db.select(
      _db.pdfs,
    )..where((pdf) => pdf.localFileName.equals(fileName))).getSingleOrNull();
    return row != null;
  }
}
