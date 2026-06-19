import 'dart:convert';

import 'package:drift/drift.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../core/config/app_config.dart';
import '../database/app_database.dart';
import '../database/database_provider.dart';
import '../models/content_models.dart';

class CourseSummary {
  const CourseSummary({
    required this.id,
    required this.title,
    required this.titleEn,
    required this.color,
    this.icon,
    required this.mode,
    this.root,
    required this.chapterCount,
    required this.lessonCount,
    required this.isReady,
  });

  final String id;
  final String title;
  final String titleEn;
  final String color;
  final String? icon;
  final String mode;
  final String? root;
  final int chapterCount;
  final int lessonCount;
  final bool isReady;
}

class CourseDetail {
  const CourseDetail({
    required this.summary,
    required this.structure,
    required this.chapters,
    required this.modesByChapter,
  });

  final CourseSummary summary;
  final List<CourseNode> structure;
  final List<ChapterInfo> chapters;
  final Map<String, List<LessonMode>> modesByChapter;
}

class ContentRepository {
  ContentRepository(this._db);

  final AppDatabase _db;
  String? _imageBaseUrl;

  SupabaseClient? get _client {
    try {
      return Supabase.instance.client;
    } catch (_) {
      return null;
    }
  }

  Stream<List<CourseSummary>> watchReadyCourses() {
    return _db.watchReadyCourses().map((rows) => rows.map(_courseFromCache).toList());
  }

  Future<void> refreshCourses() async {
    final client = _client;
    if (client == null) return;
    final rows = await client.from('courses').select().eq('is_ready', true).order('sort_order');
    final now = DateTime.now().millisecondsSinceEpoch;
    final companions = rows.cast<Map>().map((raw) {
      final row = raw.cast<String, Object?>();
      return CourseCacheCompanion.insert(
        id: row['id']?.toString() ?? '',
        title: row['title']?.toString() ?? '',
        titleEn: row['title_en']?.toString() ?? '',
        color: row['color']?.toString() ?? 'slate',
        mode: row['mode']?.toString() ?? 'PHYSIOPATHOLOGY',
        sortOrder: (row['sort_order'] as num?)?.toInt() ?? 0,
        isReady: row['is_ready'] == true,
        chapterCount: (row['chapter_count'] as num?)?.toInt() ?? 0,
        lessonCount: (row['lesson_count'] as num?)?.toInt() ?? 0,
        structureJson: jsonEncode(row['structure'] ?? const []),
        chaptersJson: jsonEncode(row['chapters'] ?? const []),
        cachedAt: now,
        icon: Value(row['icon']?.toString()),
        root: Value(row['root']?.toString()),
        contentHash: Value(row['content_hash']?.toString()),
      );
    }).toList();
    if (companions.isNotEmpty) {
      await _db.batch((batch) => batch.insertAllOnConflictUpdate(_db.courseCache, companions));
    }
  }

  Future<CourseDetail?> getCourseDetail(String id) async {
    var row = await (_db.select(_db.courseCache)..where((course) => course.id.equals(id))).getSingleOrNull();
    if (row == null) {
      await refreshCourses();
      row = await (_db.select(_db.courseCache)..where((course) => course.id.equals(id))).getSingleOrNull();
    }
    if (row == null) return null;
    final structure = (jsonDecode(row.structureJson) as List).map(CourseNode.fromJson).toList();
    final chapters = (jsonDecode(row.chaptersJson) as List).map(ChapterInfo.fromJson).toList();
    return CourseDetail(
      summary: _courseFromCache(row),
      structure: structure,
      chapters: chapters,
      modesByChapter: await _loadModesByChapter(row.id),
    );
  }

  Future<LessonData?> getLesson(String chapterId, LessonMode mode) async {
    final cached = await (_db.select(_db.lessonCache)
          ..where((lesson) => lesson.chapterId.equals(chapterId) & lesson.mode.equals(mode.key)))
        .getSingleOrNull();
    if (cached != null) return LessonData.fromJsonString(cached.contentJson);
    final client = _client;
    if (client == null) return null;
    final row = await client.from('lessons').select().eq('chapter_id', chapterId).eq('mode', mode.key).maybeSingle();
    if (row == null) return null;
    final content = LessonData.fromJson(row['content']);
    await _db.into(_db.lessonCache).insertOnConflictUpdate(
          LessonCacheCompanion.insert(
            chapterId: chapterId,
            mode: mode.key,
            contentJson: content.toJsonString(),
            cachedAt: DateTime.now().millisecondsSinceEpoch,
            courseId: Value(row['course_id']?.toString()),
            title: Value(row['title']?.toString()),
            contentHash: Value(row['content_hash']?.toString()),
          ),
        );
    return content;
  }

  Future<String> imageBaseUrl() async {
    if (_imageBaseUrl != null) return _imageBaseUrl!;
    final client = _client;
    if (client != null) {
      final row = await client.from('app_config').select('key,value').eq('key', 'image_base_url').maybeSingle();
      _imageBaseUrl = row?['value']?.toString();
    }
    return _imageBaseUrl ?? AppConfig.imageBaseUrlFallback;
  }

  Future<String?> imageUrl(String? key) async {
    if (key == null || key.trim().isEmpty) return null;
    if (key.startsWith('http://') || key.startsWith('https://') || key.startsWith('data:')) return key;
    return '${(await imageBaseUrl()).replaceFirst(RegExp(r'/$'), '')}/${key.replaceFirst(RegExp(r'^/'), '')}';
  }

  Future<Map<String, List<LessonMode>>> _loadModesByChapter(String courseId) async {
    final cached = await (_db.select(_db.lessonCache)..where((lesson) => lesson.courseId.equals(courseId))).get();
    final map = <String, Set<LessonMode>>{};
    for (final row in cached) {
      final mode = LessonMode.from(row.mode);
      if (mode != null) map.putIfAbsent(row.chapterId, () => {}).add(mode);
    }
    return map.map((key, value) => MapEntry(key, LessonMode.defaultOrder.where(value.contains).toList()));
  }

  CourseSummary _courseFromCache(CourseCacheData row) {
    return CourseSummary(
      id: row.id,
      title: row.title,
      titleEn: row.titleEn,
      color: row.color,
      icon: row.icon,
      mode: row.mode,
      root: row.root,
      chapterCount: row.chapterCount,
      lessonCount: row.lessonCount,
      isReady: row.isReady,
    );
  }
}

final contentRepositoryProvider = Provider<ContentRepository>((ref) {
  return ContentRepository(ref.watch(appDatabaseProvider));
});
