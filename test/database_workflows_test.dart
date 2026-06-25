import 'package:drift/drift.dart' as drift;
import 'package:drift/native.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:studyhub/data/database/app_database.dart';

void main() {
  late AppDatabase db;

  setUp(() {
    db = AppDatabase(NativeDatabase.memory());
  });

  tearDown(() async {
    await db.close();
  });

  test(
    'review update persists SRS state, activity, and achievement unlock',
    () async {
      final pdfId = await db
          .into(db.pdfs)
          .insert(
            PdfsCompanion.insert(
              title: 'Biology',
              processingStatus: 'READY',
              createdAt: 1,
              pageCount: const drift.Value(12),
            ),
          );
      final cardId = await db
          .into(db.flashcards)
          .insert(
            FlashcardsCompanion.insert(
              pdfId: pdfId,
              question: 'What pumps blood?',
              answer: 'The heart',
              type: 'FLASHCARD',
              topic: 'Cardiology',
              intervalDays: 1,
              easeFactor: 2.5,
              nextReviewAt: 1,
              successiveCorrect: 0,
              wrongCount: 0,
            ),
          );

      await db.updateFlashcardReview(
        id: cardId,
        intervalDays: 4,
        easeFactor: 2.5,
        nextReviewAt: 1000,
        successiveCorrect: 1,
        wrongCount: 0,
      );

      final card = await (db.select(
        db.flashcards,
      )..where((row) => row.id.equals(cardId))).getSingle();
      expect(card.intervalDays, 4);
      expect(card.nextReviewAt, 1000);

      final activity = await db.select(db.studyActivity).getSingle();
      expect(activity.cardsReviewed, 1);

      final achievement = await (db.select(
        db.achievements,
      )..where((row) => row.id.equals('first_review'))).getSingle();
      expect(achievement.unlockedAt, isNotNull);
    },
  );

  test(
    'achievement catalog seeds locked items and unlocks first PDF import',
    () async {
      await db.refreshAchievements();
      var achievements = await db.select(db.achievements).get();
      expect(achievements.length, greaterThanOrEqualTo(7));
      expect(
        achievements.singleWhere((item) => item.id == 'first_pdf').unlockedAt,
        isNull,
      );

      await db
          .into(db.pdfs)
          .insert(
            PdfsCompanion.insert(
              title: 'Physics',
              processingStatus: 'READY',
              createdAt: 1,
              pageCount: const drift.Value(8),
            ),
          );
      await db.refreshAchievements();

      achievements = await db.select(db.achievements).get();
      expect(
        achievements.singleWhere((item) => item.id == 'first_pdf').unlockedAt,
        isNotNull,
      );
    },
  );

  test(
    'bookmark toggle inserts and removes current PDF page bookmark',
    () async {
      final pdfId = await db
          .into(db.pdfs)
          .insert(
            PdfsCompanion.insert(
              title: 'Anatomy',
              processingStatus: 'READY',
              createdAt: 1,
              pageCount: const drift.Value(20),
            ),
          );

      await db.toggleBookmark(pdfId: pdfId, pageNumber: 3, title: 'Page 3');
      var bookmarks = await db.select(db.bookmarks).get();
      expect(bookmarks, hasLength(1));
      expect(bookmarks.single.pageNumber, 3);

      await db.toggleBookmark(pdfId: pdfId, pageNumber: 3, title: 'Page 3');
      bookmarks = await db.select(db.bookmarks).get();
      expect(bookmarks, isEmpty);
    },
  );

  test('smart note insert stores page scoped note', () async {
    final pdfId = await db
        .into(db.pdfs)
        .insert(
          PdfsCompanion.insert(
            title: 'Chemistry',
            processingStatus: 'READY',
            createdAt: 1,
            pageCount: const drift.Value(14),
          ),
        );

    await db.addSmartNote(
      pdfId: pdfId,
      pageNumber: 5,
      term: 'pH',
      explanation: 'A logarithmic acidity scale.',
    );

    final notes = await db.select(db.smartNotes).get();
    expect(notes, hasLength(1));
    expect(notes.single.pageNumber, 5);
    expect(notes.single.term, 'pH');
  });
}
