import 'dart:convert';
import 'dart:io';

Future<void> main(List<String> args) async {
  final force = args.contains('--force');
  final sqliteVersion = await _lockedPackageVersion('sqlite3');
  await Directory('web').create(recursive: true);
  await _downloadSqliteWasm(sqliteVersion, force: force);
  await _compileDriftWorker();
}

Future<String> _lockedPackageVersion(String packageName) async {
  final packageConfig = File('.dart_tool/package_config.json');
  if (!await packageConfig.exists()) {
    throw StateError('Run flutter pub get before preparing web assets.');
  }
  final root = jsonDecode(await packageConfig.readAsString()) as Map;
  final packages = root['packages'] as List;
  final package = packages.cast<Map>().firstWhere(
    (item) => item['name'] == packageName,
    orElse: () =>
        throw StateError('$packageName is missing from package_config.'),
  );
  final rootUri = package['rootUri'] as String? ?? '';
  final match = RegExp('$packageName-([^/\\\\]+)').firstMatch(rootUri);
  if (match == null) {
    throw StateError('Could not infer $packageName version from $rootUri.');
  }
  return match.group(1)!;
}

Future<void> _downloadSqliteWasm(
  String sqliteVersion, {
  required bool force,
}) async {
  final output = File('web/sqlite3.wasm');
  if (!force && await output.exists() && await output.length() > 0) {
    return;
  }
  final uri = Uri.parse(
    'https://github.com/simolus3/sqlite3.dart/releases/download/'
    'sqlite3-$sqliteVersion/sqlite3.wasm',
  );
  final client = HttpClient();
  try {
    final request = await client.getUrl(uri);
    final response = await request.close();
    if (response.statusCode != HttpStatus.ok) {
      throw HttpException(
        'Failed to download sqlite3.wasm: HTTP ${response.statusCode}',
        uri: uri,
      );
    }
    final bytes = await response.fold<List<int>>(
      <int>[],
      (buffer, chunk) => buffer..addAll(chunk),
    );
    await output.writeAsBytes(bytes, flush: true);
  } finally {
    client.close(force: true);
  }
}

Future<void> _compileDriftWorker() async {
  final result = await Process.run('dart', [
    'compile',
    'js',
    '-O4',
    '-o',
    'web/drift_worker.js',
    'tool/drift_worker.dart',
  ], runInShell: Platform.isWindows);
  await File('web/drift_worker.js.deps').deleteIfExists();
  await File('web/drift_worker.js.map').deleteIfExists();
  if (result.exitCode != 0) {
    stderr.write(result.stderr);
    stdout.write(result.stdout);
    throw ProcessException(
      'dart',
      [
        'compile',
        'js',
        '-O4',
        '-o',
        'web/drift_worker.js',
        'tool/drift_worker.dart',
      ],
      'Could not compile drift_worker.js.',
      result.exitCode,
    );
  }
}

extension on File {
  Future<void> deleteIfExists() async {
    if (await exists()) await delete();
  }
}
