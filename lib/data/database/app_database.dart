import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';

part 'app_database.g.dart';

class Pdfs extends Table {
  @override
  String get tableName => 'pdfs';

  IntColumn get id => integer().autoIncrement()();
  TextColumn get title => text()();
  IntColumn get pageCount => integer().nullable().named('pageCount')();
  TextColumn get processingStatus => text().named('processingStatus')();
  TextColumn get subjects => text().nullable()();
  TextColumn get difficultyLevel => text().nullable().named('difficultyLevel')();
  TextColumn get contentFormat => text().nullable().named('contentFormat')();
  IntColumn get progression => integer().withDefault(const Constant(0))();
  TextColumn get outline => text().nullable()();
  IntColumn get createdAt => integer().named('createdAt')();
  IntColumn get lastOpenedAt => integer().nullable().named('lastOpenedAt')();
  TextColumn get coverColor => text().nullable().named('coverColor')();
  IntColumn get targetDays => integer().nullable().named('targetDays')();
  TextColumn get thumbnailBase64 => text().nullable().named('thumbnailBase64')();
  TextColumn get localFileName => text().nullable().named('localFileName')();
  TextColumn get thumbnailPath => text().nullable().named('thumbnailPath')();
  TextColumn get remoteId => text().nullable().named('remoteId')();
}

class LessonForks extends Table {
  @override
  String get tableName => 'lesson_forks';

  TextColumn get id => text()();
  IntColumn get pdfId => integer().named('pdfId')();
  TextColumn get pdfRemoteId => text().nullable().named('pdfRemoteId')();
  TextColumn get preset => text()();
  TextColumn get title => text()();
  TextColumn get scopeType => text().named('scopeType')();
  TextColumn get scopeLabel => text().named('scopeLabel')();
  IntColumn get startPage => integer().nullable().named('startPage')();
  IntColumn get endPage => integer().nullable().named('endPage')();
  TextColumn get contentJson => text().withDefault(const Constant('')).named('contentJson')();
  TextColumn get status => text()();
  RealColumn get progress => real().withDefault(const Constant(0)).named('progress')();
  TextColumn get model => text().withDefault(const Constant(''))();
  IntColumn get createdAt => integer().named('createdAt')();
  IntColumn get updatedAt => integer().named('updatedAt')();

  @override
  Set<Column> get primaryKey => {id};
}

class Flashcards extends Table {
  @override
  String get tableName => 'flashcards';

  IntColumn get id => integer().autoIncrement()();
  IntColumn get pdfId => integer().named('pdfId')();
  TextColumn get question => text()();
  TextColumn get answer => text()();
  TextColumn get type => text()();
  TextColumn get options => text().nullable()();
  IntColumn get correctOptionIndex => integer().nullable().named('correctOptionIndex')();
  TextColumn get topic => text()();
  IntColumn get intervalDays => integer().named('intervalDays')();
  RealColumn get easeFactor => real().named('easeFactor')();
  IntColumn get nextReviewAt => integer().named('nextReviewAt')();
  IntColumn get successiveCorrect => integer().named('successiveCorrect')();
  IntColumn get wrongCount => integer().named('wrongCount')();
  TextColumn get sourceKey => text().nullable().named('sourceKey')();
}

class StudyPlans extends Table {
  @override
  String get tableName => 'study_plans';

  IntColumn get id => integer().autoIncrement()();
  IntColumn get day => integer()();
  IntColumn get pdfId => integer().named('pdfId')();
  TextColumn get pdfTitle => text().named('pdfTitle')();
  TextColumn get topic => text()();
  IntColumn get timeframeMinutes => integer().named('timeframeMinutes')();
  IntColumn get startPage => integer().nullable().named('startPage')();
  IntColumn get endPage => integer().nullable().named('endPage')();
  BoolColumn get completed => boolean().withDefault(const Constant(false))();
  TextColumn get source => text().withDefault(const Constant('AI'))();
  TextColumn get sourceType => text().withDefault(const Constant('PDF')).named('sourceType')();
  TextColumn get chapterId => text().nullable().named('chapterId')();
  TextColumn get mode => text().nullable()();
  TextColumn get courseId => text().nullable().named('courseId')();
}

class ChatMessages extends Table {
  @override
  String get tableName => 'chat_messages';

  IntColumn get id => integer().autoIncrement()();
  IntColumn get pdfId => integer().named('pdfId')();
  TextColumn get role => text()();
  TextColumn get textValue => text().named('text')();
  BoolColumn get isAudio => boolean().withDefault(const Constant(false)).named('isAudio')();
  TextColumn get audioData => text().nullable().named('audioData')();
  IntColumn get createdAt => integer().named('createdAt')();
}

class SmartNotes extends Table {
  @override
  String get tableName => 'smart_notes';

  IntColumn get id => integer().autoIncrement()();
  IntColumn get pdfId => integer().named('pdfId')();
  IntColumn get pageNumber => integer().named('pageNumber')();
  TextColumn get term => text()();
  TextColumn get explanation => text()();
  RealColumn get x => real().withDefault(const Constant(0))();
  RealColumn get y => real().withDefault(const Constant(0))();
  TextColumn get colorHex => text().nullable().named('colorHex')();
  BoolColumn get pinned => boolean().withDefault(const Constant(false))();
}

class TtsCache extends Table {
  @override
  String get tableName => 'tts_cache';

  TextColumn get textHash => text().named('textHash')();
  TextColumn get textValue => text().named('text')();
  TextColumn get audioBase64 => text().named('audioBase64')();
  IntColumn get createdAt => integer().named('createdAt')();

  @override
  Set<Column> get primaryKey => {textHash};
}

class StudyActivity extends Table {
  @override
  String get tableName => 'study_activity';

  TextColumn get date => text()();
  IntColumn get minutesStudied => integer().withDefault(const Constant(0)).named('minutesStudied')();
  IntColumn get pagesRead => integer().withDefault(const Constant(0)).named('pagesRead')();
  IntColumn get cardsReviewed => integer().withDefault(const Constant(0)).named('cardsReviewed')();

  @override
  Set<Column> get primaryKey => {date};
}

class Bookmarks extends Table {
  @override
  String get tableName => 'bookmarks';

  IntColumn get id => integer().autoIncrement()();
  IntColumn get pdfId => integer().named('pdfId')();
  IntColumn get pageNumber => integer().named('pageNumber')();
  TextColumn get title => text()();
  IntColumn get createdAt => integer().named('createdAt')();
  TextColumn get colorHex => text().nullable().named('colorHex')();
}

class Annotations extends Table {
  @override
  String get tableName => 'annotations';

  IntColumn get id => integer().autoIncrement()();
  IntColumn get pdfId => integer().named('pdfId')();
  IntColumn get pageNumber => integer().named('pageNumber')();
  TextColumn get pathDataJson => text().named('pathDataJson')();
  TextColumn get colorHex => text().named('colorHex')();
  RealColumn get strokeWidth => real().named('strokeWidth')();
  IntColumn get createdAt => integer().named('createdAt')();
}

class LessonAnnotations extends Table {
  @override
  String get tableName => 'lesson_annotations';

  IntColumn get id => integer().autoIncrement()();
  TextColumn get chapterId => text().named('chapterId')();
  TextColumn get mode => text()();
  TextColumn get pathDataJson => text().named('pathDataJson')();
  TextColumn get colorHex => text().named('colorHex')();
  RealColumn get strokeWidth => real().named('strokeWidth')();
  IntColumn get createdAt => integer().named('createdAt')();
}

class Tags extends Table {
  @override
  String get tableName => 'tags';

  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text()();
  TextColumn get colorHex => text().named('colorHex')();
}

class PdfTagCrossRefs extends Table {
  @override
  String get tableName => 'pdf_tag_cross_ref';

  IntColumn get pdfId => integer().named('pdfId')();
  IntColumn get tagId => integer().named('tagId')();

  @override
  Set<Column> get primaryKey => {pdfId, tagId};
}

class Achievements extends Table {
  @override
  String get tableName => 'achievements';

  TextColumn get id => text()();
  TextColumn get title => text()();
  TextColumn get description => text()();
  IntColumn get unlockedAt => integer().nullable().named('unlockedAt')();

  @override
  Set<Column> get primaryKey => {id};
}

class AiJobs extends Table {
  @override
  String get tableName => 'ai_jobs';

  IntColumn get id => integer().autoIncrement()();
  TextColumn get type => text()();
  TextColumn get payloadJson => text().named('payloadJson')();
  TextColumn get status => text()();
  IntColumn get retries => integer().withDefault(const Constant(0))();
  IntColumn get createdAt => integer().named('createdAt')();
  IntColumn get updatedAt => integer().named('updatedAt')();
}

class CourseCache extends Table {
  @override
  String get tableName => 'course_cache';

  TextColumn get id => text()();
  TextColumn get title => text()();
  TextColumn get titleEn => text().named('titleEn')();
  TextColumn get color => text()();
  TextColumn get icon => text().nullable()();
  TextColumn get mode => text()();
  TextColumn get root => text().nullable()();
  IntColumn get sortOrder => integer().named('sortOrder')();
  BoolColumn get isReady => boolean().named('isReady')();
  IntColumn get chapterCount => integer().named('chapterCount')();
  IntColumn get lessonCount => integer().named('lessonCount')();
  TextColumn get structureJson => text().named('structureJson')();
  TextColumn get chaptersJson => text().named('chaptersJson')();
  TextColumn get contentHash => text().nullable().named('contentHash')();
  IntColumn get cachedAt => integer().named('cachedAt')();

  @override
  Set<Column> get primaryKey => {id};
}

class LessonCache extends Table {
  @override
  String get tableName => 'lesson_cache';

  TextColumn get chapterId => text().named('chapterId')();
  TextColumn get mode => text()();
  TextColumn get courseId => text().nullable().named('courseId')();
  TextColumn get title => text().nullable()();
  TextColumn get contentJson => text().named('contentJson')();
  TextColumn get contentHash => text().nullable().named('contentHash')();
  IntColumn get cachedAt => integer().named('cachedAt')();

  @override
  Set<Column> get primaryKey => {chapterId, mode};
}

class ContentReadingPositions extends Table {
  @override
  String get tableName => 'content_reading_position';

  TextColumn get chapterId => text().named('chapterId')();
  TextColumn get mode => text()();
  TextColumn get courseId => text().named('courseId')();
  TextColumn get chapterTitle => text().named('chapterTitle')();
  IntColumn get sectionIndex => integer().named('sectionIndex')();
  IntColumn get updatedAt => integer().named('updatedAt')();

  @override
  Set<Column> get primaryKey => {chapterId, mode};
}

class ContentLessonStates extends Table {
  @override
  String get tableName => 'content_lesson_state';

  TextColumn get chapterId => text().named('chapterId')();
  TextColumn get status => text().nullable()();
  BoolColumn get bookmarked => boolean().withDefault(const Constant(false))();
  IntColumn get updatedAt => integer().named('updatedAt')();

  @override
  Set<Column> get primaryKey => {chapterId};
}

@DriftDatabase(
  tables: [
    Pdfs,
    LessonForks,
    Flashcards,
    StudyPlans,
    ChatMessages,
    SmartNotes,
    TtsCache,
    StudyActivity,
    Bookmarks,
    Annotations,
    LessonAnnotations,
    Tags,
    PdfTagCrossRefs,
    Achievements,
    AiJobs,
    CourseCache,
    LessonCache,
    ContentReadingPositions,
    ContentLessonStates,
  ],
)
class AppDatabase extends _$AppDatabase {
  AppDatabase([QueryExecutor? executor]) : super(executor ?? driftDatabase(name: 'nexus_study_database'));

  @override
  int get schemaVersion => 16;

  @override
  MigrationStrategy get migration => MigrationStrategy(
        onCreate: (m) async {
          await m.createAll();
          await customStatement('PRAGMA user_version = 16');
        },
        onUpgrade: (m, from, to) async {
          await _runLegacyRoomMigrations(from, to);
        },
        beforeOpen: (details) async {
          await customStatement('PRAGMA foreign_keys = ON');
          await _createCompatibilityIndexes();
        },
      );

  Future<List<Pdf>> listPdfs() => (select(pdfs)..orderBy([(p) => OrderingTerm.desc(p.lastOpenedAt)])).get();

  Stream<List<Pdf>> watchPdfs() => (select(pdfs)..orderBy([(p) => OrderingTerm.desc(p.lastOpenedAt)])).watch();

  Stream<List<CourseCacheData>> watchReadyCourses() {
    return (select(courseCache)
          ..where((course) => course.isReady.equals(true))
          ..orderBy([(course) => OrderingTerm.asc(course.sortOrder)]))
        .watch();
  }

  Stream<List<Flashcard>> watchDueFlashcards([int? now]) {
    final dueAt = now ?? DateTime.now().millisecondsSinceEpoch;
    return (select(flashcards)
          ..where((card) => card.nextReviewAt.isSmallerOrEqualValue(dueAt))
          ..orderBy([(card) => OrderingTerm.asc(card.nextReviewAt)]))
        .watch();
  }

  Future<void> _runLegacyRoomMigrations(int from, int to) async {
    Future<void> exec(String sql) => customStatement(sql);
    if (from < 2 && to >= 2) {
      await exec("CREATE TABLE IF NOT EXISTS tts_cache (textHash TEXT NOT NULL PRIMARY KEY, text TEXT NOT NULL, audioBase64 TEXT NOT NULL, createdAt INTEGER NOT NULL)");
    }
    if (from < 3 && to >= 3) await _addColumnIfMissing('pdfs', 'progression', 'INTEGER NOT NULL DEFAULT 0');
    if (from < 4 && to >= 4) {
      await _addColumnIfMissing('smart_notes', 'x', 'REAL NOT NULL DEFAULT 0.0');
      await _addColumnIfMissing('smart_notes', 'y', 'REAL NOT NULL DEFAULT 0.0');
      await _addColumnIfMissing('smart_notes', 'colorHex', 'TEXT');
    }
    if (from < 5 && to >= 5) {
      await exec("CREATE TABLE IF NOT EXISTS study_activity (date TEXT NOT NULL PRIMARY KEY, minutesStudied INTEGER NOT NULL DEFAULT 0, pagesRead INTEGER NOT NULL DEFAULT 0, cardsReviewed INTEGER NOT NULL DEFAULT 0)");
    }
    if (from < 6 && to >= 6) await _addColumnIfMissing('study_plans', 'source', "TEXT NOT NULL DEFAULT 'AI'");
    if (from < 7 && to >= 7) await _addColumnIfMissing('pdfs', 'thumbnailPath', 'TEXT');
    if (from < 8 && to >= 8) {
      await exec('CREATE TABLE IF NOT EXISTS bookmarks (id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT, pdfId INTEGER NOT NULL, pageNumber INTEGER NOT NULL, title TEXT NOT NULL, createdAt INTEGER NOT NULL, colorHex TEXT)');
      await exec('CREATE TABLE IF NOT EXISTS annotations (id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT, pdfId INTEGER NOT NULL, pageNumber INTEGER NOT NULL, pathDataJson TEXT NOT NULL, colorHex TEXT NOT NULL, strokeWidth REAL NOT NULL, createdAt INTEGER NOT NULL)');
      await exec('CREATE TABLE IF NOT EXISTS tags (id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT, name TEXT NOT NULL, colorHex TEXT NOT NULL)');
      await exec('CREATE TABLE IF NOT EXISTS pdf_tag_cross_ref (pdfId INTEGER NOT NULL, tagId INTEGER NOT NULL, PRIMARY KEY(pdfId, tagId))');
      await exec('CREATE TABLE IF NOT EXISTS achievements (id TEXT NOT NULL PRIMARY KEY, title TEXT NOT NULL, description TEXT NOT NULL, unlockedAt INTEGER)');
      await exec('CREATE TABLE IF NOT EXISTS ai_jobs (id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT, type TEXT NOT NULL, payloadJson TEXT NOT NULL, status TEXT NOT NULL, retries INTEGER NOT NULL, createdAt INTEGER NOT NULL, updatedAt INTEGER NOT NULL)');
    }
    if (from < 9 && to >= 9) await _addColumnIfMissing('smart_notes', 'pinned', 'INTEGER NOT NULL DEFAULT 0');
    if (from < 10 && to >= 10) {
      await exec('CREATE TABLE IF NOT EXISTS course_cache (id TEXT NOT NULL PRIMARY KEY, title TEXT NOT NULL, titleEn TEXT NOT NULL, color TEXT NOT NULL, icon TEXT, mode TEXT NOT NULL, root TEXT, sortOrder INTEGER NOT NULL, isReady INTEGER NOT NULL, chapterCount INTEGER NOT NULL, lessonCount INTEGER NOT NULL, structureJson TEXT NOT NULL, chaptersJson TEXT NOT NULL, contentHash TEXT, cachedAt INTEGER NOT NULL)');
      await exec('CREATE TABLE IF NOT EXISTS lesson_cache (chapterId TEXT NOT NULL, mode TEXT NOT NULL, courseId TEXT, title TEXT, contentJson TEXT NOT NULL, contentHash TEXT, cachedAt INTEGER NOT NULL, PRIMARY KEY(chapterId, mode))');
    }
    if (from < 11 && to >= 11) {
      await exec('CREATE TABLE IF NOT EXISTS content_reading_position (chapterId TEXT NOT NULL, mode TEXT NOT NULL, courseId TEXT NOT NULL, chapterTitle TEXT NOT NULL, sectionIndex INTEGER NOT NULL, updatedAt INTEGER NOT NULL, PRIMARY KEY(chapterId, mode))');
      await exec('CREATE TABLE IF NOT EXISTS content_lesson_state (chapterId TEXT NOT NULL PRIMARY KEY, status TEXT, bookmarked INTEGER NOT NULL, updatedAt INTEGER NOT NULL)');
    }
    if (from < 12 && to >= 12) await _addColumnIfMissing('flashcards', 'sourceKey', 'TEXT');
    if (from < 13 && to >= 13) await _addColumnIfMissing('pdfs', 'remoteId', 'TEXT');
    if (from < 14 && to >= 14) {
      await exec('CREATE TABLE IF NOT EXISTS lesson_annotations (id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT, chapterId TEXT NOT NULL, mode TEXT NOT NULL, pathDataJson TEXT NOT NULL, colorHex TEXT NOT NULL, strokeWidth REAL NOT NULL, createdAt INTEGER NOT NULL)');
    }
    if (from < 15 && to >= 15) {
      await _addColumnIfMissing('study_plans', 'sourceType', "TEXT NOT NULL DEFAULT 'PDF'");
      await _addColumnIfMissing('study_plans', 'chapterId', 'TEXT');
      await _addColumnIfMissing('study_plans', 'mode', 'TEXT');
      await _addColumnIfMissing('study_plans', 'courseId', 'TEXT');
    }
    if (from < 16 && to >= 16) {
      await exec('CREATE TABLE IF NOT EXISTS lesson_forks (id TEXT NOT NULL PRIMARY KEY, pdfId INTEGER NOT NULL, pdfRemoteId TEXT, preset TEXT NOT NULL, title TEXT NOT NULL, scopeType TEXT NOT NULL, scopeLabel TEXT NOT NULL, startPage INTEGER, endPage INTEGER, contentJson TEXT NOT NULL, status TEXT NOT NULL, progress REAL NOT NULL, model TEXT NOT NULL, createdAt INTEGER NOT NULL, updatedAt INTEGER NOT NULL)');
    }
  }

  Future<void> _addColumnIfMissing(String table, String column, String definition) async {
    final existing = await customSelect('PRAGMA table_info($table)').get();
    final hasColumn = existing.any((row) => row.data['name'] == column);
    if (!hasColumn) await customStatement('ALTER TABLE $table ADD COLUMN $column $definition');
  }

  Future<void> _createCompatibilityIndexes() async {
    final statements = [
      'CREATE INDEX IF NOT EXISTS index_pdfs_title ON pdfs(title)',
      'CREATE INDEX IF NOT EXISTS index_flashcards_pdfId ON flashcards(pdfId)',
      'CREATE INDEX IF NOT EXISTS index_flashcards_nextReviewAt ON flashcards(nextReviewAt)',
      'CREATE INDEX IF NOT EXISTS index_study_plans_pdfId ON study_plans(pdfId)',
      'CREATE INDEX IF NOT EXISTS index_study_plans_day ON study_plans(day)',
      'CREATE INDEX IF NOT EXISTS index_bookmarks_pdfId ON bookmarks(pdfId)',
      'CREATE INDEX IF NOT EXISTS index_annotations_pdfId_pageNumber ON annotations(pdfId, pageNumber)',
      'CREATE INDEX IF NOT EXISTS index_lesson_annotations_chapterId_mode ON lesson_annotations(chapterId, mode)',
      'CREATE INDEX IF NOT EXISTS index_lesson_cache_courseId ON lesson_cache(courseId)',
      'CREATE INDEX IF NOT EXISTS index_lesson_forks_pdfId ON lesson_forks(pdfId)',
    ];
    for (final statement in statements) {
      await customStatement(statement);
    }
  }
}
