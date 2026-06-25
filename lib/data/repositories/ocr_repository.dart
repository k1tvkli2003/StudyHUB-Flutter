import 'package:file_selector/file_selector.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_mlkit_text_recognition/google_mlkit_text_recognition.dart';

final ocrRepositoryProvider = Provider<OcrRepository>(
  (ref) => const OcrRepository(),
);

class OcrRepository {
  const OcrRepository();

  bool get isSupported {
    if (kIsWeb) return false;
    return defaultTargetPlatform == TargetPlatform.android ||
        defaultTargetPlatform == TargetPlatform.iOS;
  }

  Future<String?> pickAndRecognizeText() async {
    if (!isSupported) {
      throw UnsupportedError(
        'Camera OCR is currently available on Android and iOS.',
      );
    }
    const typeGroup = XTypeGroup(
      label: 'Images',
      extensions: ['jpg', 'jpeg', 'png', 'heic', 'webp'],
      mimeTypes: ['image/jpeg', 'image/png', 'image/heic', 'image/webp'],
      uniformTypeIdentifiers: ['public.image'],
    );
    final file = await openFile(
      acceptedTypeGroups: [typeGroup],
      confirmButtonText: 'Scan',
    );
    if (file == null) return null;
    final path = file.path;
    if (path.isEmpty) {
      throw UnsupportedError(
        'OCR needs a local image file path on this platform.',
      );
    }

    final recognizer = TextRecognizer();
    try {
      final recognized = await recognizer.processImage(
        InputImage.fromFilePath(path),
      );
      final text = recognized.text.trim();
      return text.isEmpty ? null : text;
    } finally {
      await recognizer.close();
    }
  }
}
