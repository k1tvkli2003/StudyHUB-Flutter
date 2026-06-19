import 'package:flutter_test/flutter_test.dart';
import 'package:studyhub/data/models/content_models.dart';

void main() {
  test('content value tolerates strings and arrays', () {
    expect(ContentValue.fromJson('hello').text, 'hello');
    final list = ContentValue.fromJson(['a', 'b']);
    expect(list.isList, isTrue);
    expect(list.text, 'a\nb');
  });

  test('lesson data decodes unknown content type as default', () {
    final lesson = LessonData.fromJson({
      'title': 'Test',
      'sections': [
        {
          'id': 's1',
          'title': 'Section',
          'blocks': [
            {'id': 'b1', 'type': 'NEW_TYPE', 'content': 'Body'}
          ],
        }
      ],
    });
    expect(lesson.sections.single.blocks.single.type, ContentType.defaultType);
  });
}
