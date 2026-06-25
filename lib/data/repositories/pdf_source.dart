import 'dart:typed_data';

class PdfDocumentSource {
  const PdfDocumentSource.file({required this.sourceName, required String path})
    : filePath = path,
      bytes = null;

  const PdfDocumentSource.bytes({
    required this.sourceName,
    required Uint8List data,
  }) : bytes = data,
       filePath = null;

  final String sourceName;
  final String? filePath;
  final Uint8List? bytes;
}

class PreparedPdfImport {
  const PreparedPdfImport({
    required this.fileName,
    required this.pageCount,
    required this.commit,
  });

  final String fileName;
  final int? pageCount;
  final Future<void> Function(int pdfId) commit;
}
