import 'dart:math' as math;

class FlashcardRecord {
  const FlashcardRecord({
    this.id = 0,
    required this.pdfId,
    required this.question,
    required this.answer,
    required this.type,
    this.options,
    this.correctOptionIndex,
    required this.topic,
    this.intervalDays = 1,
    this.easeFactor = 2.5,
    required this.nextReviewAt,
    this.successiveCorrect = 0,
    this.wrongCount = 0,
    this.sourceKey,
  });

  final int id;
  final int pdfId;
  final String question;
  final String answer;
  final String type;
  final String? options;
  final int? correctOptionIndex;
  final String topic;
  final int intervalDays;
  final double easeFactor;
  final int nextReviewAt;
  final int successiveCorrect;
  final int wrongCount;
  final String? sourceKey;

  FlashcardRecord copyWith({
    int? intervalDays,
    double? easeFactor,
    int? nextReviewAt,
    int? successiveCorrect,
    int? wrongCount,
  }) {
    return FlashcardRecord(
      id: id,
      pdfId: pdfId,
      question: question,
      answer: answer,
      type: type,
      options: options,
      correctOptionIndex: correctOptionIndex,
      topic: topic,
      intervalDays: intervalDays ?? this.intervalDays,
      easeFactor: easeFactor ?? this.easeFactor,
      nextReviewAt: nextReviewAt ?? this.nextReviewAt,
      successiveCorrect: successiveCorrect ?? this.successiveCorrect,
      wrongCount: wrongCount ?? this.wrongCount,
      sourceKey: sourceKey,
    );
  }
}

class SrsCalculator {
  const SrsCalculator._();

  static FlashcardRecord calculate(
    FlashcardRecord card,
    int grade, {
    int? now,
  }) {
    final baseNow = now ?? DateTime.now().millisecondsSinceEpoch;
    var nextInterval = card.intervalDays;
    var newEase = card.easeFactor;
    var newSuccessive = card.successiveCorrect;
    var wrongCount = card.wrongCount;

    switch (grade) {
      case 1:
        nextInterval = 1;
        newEase = math.max(1.3, newEase - 0.2);
        newSuccessive = 0;
        wrongCount++;
      case 3:
        nextInterval = newSuccessive < 1
            ? 1
            : newSuccessive < 2
                ? 6
                : math.max(nextInterval + 1, (nextInterval * 1.2).toInt());
        newEase = math.max(1.3, newEase - 0.15);
        newSuccessive++;
      case 4:
        nextInterval = newSuccessive < 1
            ? 1
            : newSuccessive < 2
                ? 6
                : math.max(nextInterval + 1, (nextInterval * newEase).toInt());
        newSuccessive++;
      default:
        nextInterval = newSuccessive < 1
            ? 4
            : newSuccessive < 2
                ? 10
                : math.max(nextInterval + 1, (nextInterval * newEase * 1.3).toInt());
        newEase = math.min(2.5, newEase + 0.15);
        newSuccessive++;
    }

    final delayMs = grade == 1 ? 60000 : nextInterval * 24 * 60 * 60 * 1000;
    return card.copyWith(
      intervalDays: nextInterval,
      easeFactor: newEase,
      successiveCorrect: newSuccessive,
      wrongCount: wrongCount,
      nextReviewAt: baseNow + delayMs,
    );
  }
}

class XpSystem {
  const XpSystem._();

  static const cardReviewed = 5;
  static const pageRead = 2;
  static const pomodoroCompleted = 50;
  static const planDayCompleted = 30;
  static const achievementUnlocked = 100;
  static const streakDailyBonus = 10;
  static const mindMapGenerated = 20;
  static const perfectQuiz = 75;

  static int levelFor(int xp) => (math.sqrt(xp / 50.0).floor() + 1).clamp(1, 1 << 31);

  static int xpForLevel(int level) {
    if (level < 1) throw ArgumentError.value(level, 'level', 'Must be >= 1');
    final l = level - 1;
    return l * l * 50;
  }

  static double progressInLevel(int xp) {
    final current = levelFor(xp);
    final floor = xpForLevel(current);
    final ceil = xpForLevel(current + 1);
    if (ceil == floor) return 0;
    return ((xp - floor) / (ceil - floor)).clamp(0.0, 1.0);
  }

  static bool crossesLevel(int oldXp, int delta) => levelFor(oldXp + delta) > levelFor(oldXp);
}
