import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

void main() {
  test('web manifest is branded for StudyHUB', () async {
    final manifest =
        jsonDecode(await File('web/manifest.json').readAsString())
            as Map<String, Object?>;

    expect(manifest['name'], 'StudyHUB');
    expect(manifest['short_name'], 'StudyHUB');
    expect(manifest['theme_color'], '#5D6FEB');
  });
}
