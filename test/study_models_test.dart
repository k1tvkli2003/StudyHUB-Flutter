import 'package:flutter_test/flutter_test.dart';
import 'package:studyhub/data/models/study_models.dart';

void main() {
  test('SRS again resets interval and increments wrong count', () {
    final now = DateTime(2026).millisecondsSinceEpoch;
    final card = FlashcardRecord(
      pdfId: 1,
      question: 'Q',
      answer: 'A',
      type: 'flashcard',
      topic: 'Topic',
      intervalDays: 6,
      easeFactor: 2.5,
      nextReviewAt: now,
      successiveCorrect: 2,
    );
    final next = SrsCalculator.calculate(card, 1, now: now);
    expect(next.intervalDays, 1);
    expect(next.successiveCorrect, 0);
    expect(next.wrongCount, 1);
    expect(next.nextReviewAt, now + 60000);
  });

  test('XP level curve matches Android rule', () {
    expect(XpSystem.levelFor(0), 1);
    expect(XpSystem.levelFor(50), 2);
    expect(XpSystem.xpForLevel(5), 800);
    expect(XpSystem.crossesLevel(40, 15), isTrue);
  });
}
