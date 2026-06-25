import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'app_database.dart';

final appDatabaseProvider = Provider<AppDatabase>((ref) {
  final db = AppDatabase();
  ref.onDispose(db.close);
  return db;
});

final achievementsStartupProvider = FutureProvider<void>((ref) {
  return ref.watch(appDatabaseProvider).refreshAchievements();
});
