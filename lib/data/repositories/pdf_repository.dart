import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

import '../database/app_database.dart';
import '../database/database_provider.dart';

class PdfRepository {
  PdfRepository(this._db);

  final AppDatabase _db;

  Stream<List<Pdf>> watchPdfs() => _db.watchPdfs();

  Future<File?> resolvePdfFile(Pdf pdf) async {
    final name = pdf.localFileName;
    if (name == null || name.isEmpty) return null;
    final docs = await getApplicationDocumentsDirectory();
    final candidates = [
      File(p.join(docs.path, 'pdfs', name)),
      File(p.join(docs.path, name)),
      if (Platform.isAndroid) File('/data/data/com.studyhub.app/files/pdfs/$name'),
    ];
    for (final file in candidates) {
      if (await file.exists()) return file;
    }
    return null;
  }
}

final pdfRepositoryProvider = Provider<PdfRepository>((ref) => PdfRepository(ref.watch(appDatabaseProvider)));
