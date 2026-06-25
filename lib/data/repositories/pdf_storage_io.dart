import 'dart:io';

import 'package:file_selector/file_selector.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
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
    final docs = await getApplicationDocumentsDirectory();
    final pdfDir = Directory(p.join(docs.path, 'pdfs'));
    if (!await pdfDir.exists()) await pdfDir.create(recursive: true);

    final fileName = await _uniqueFileName(pdfDir, preferredFileName);
    final destination = File(p.join(pdfDir.path, fileName));
    await _copyXFile(source, destination);
    final pageCount = await _readPageCount(
      PdfDocumentSource.file(sourceName: fileName, path: destination.path),
    );

    return PreparedPdfImport(
      fileName: fileName,
      pageCount: pageCount,
      commit: (_) async {},
    );
  }

  Future<PdfDocumentSource?> resolve(Pdf pdf) async {
    final name = pdf.localFileName;
    if (name == null || name.isEmpty) return null;
    final docs = await getApplicationDocumentsDirectory();
    final candidates = [
      File(p.join(docs.path, 'pdfs', name)),
      File(p.join(docs.path, name)),
      if (Platform.isAndroid)
        File('/data/data/com.studyhub.app/files/pdfs/$name'),
    ];
    for (final file in candidates) {
      if (await file.exists()) {
        return PdfDocumentSource.file(sourceName: name, path: file.path);
      }
    }
    final blob = await _db.getPdfFileBlob(pdf.id);
    if (blob != null) {
      return PdfDocumentSource.bytes(
        sourceName: blob.fileName,
        data: blob.bytes,
      );
    }
    return null;
  }

  Future<int?> _readPageCount(PdfDocumentSource source) async {
    PdfDocument? document;
    try {
      final bytes = source.bytes;
      if (bytes != null) {
        document = await PdfDocument.openData(
          bytes,
          sourceName: source.sourceName,
        );
      } else {
        document = await PdfDocument.openFile(source.filePath!);
      }
      return document.pages.length;
    } catch (_) {
      return null;
    } finally {
      await document?.dispose();
    }
  }

  Future<String> _uniqueFileName(Directory directory, String baseName) async {
    final stem = p.basenameWithoutExtension(baseName);
    final extension = p.extension(baseName).isEmpty
        ? '.pdf'
        : p.extension(baseName);
    var candidate = '$stem$extension';
    var counter = 2;
    while (await File(p.join(directory.path, candidate)).exists()) {
      candidate = '$stem-$counter$extension';
      counter++;
    }
    return candidate;
  }

  Future<void> _copyXFile(XFile source, File destination) async {
    final sourcePath = source.path;
    if (sourcePath.isNotEmpty && await File(sourcePath).exists()) {
      final sourceFile = File(sourcePath);
      if (p.equals(sourceFile.absolute.path, destination.absolute.path)) return;
      await sourceFile.copy(destination.path);
      return;
    }
    await source.saveTo(destination.path);
  }
}
