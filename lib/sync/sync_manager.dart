import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../core/config/app_config.dart';
import '../data/repositories/content_repository.dart';
import '../data/repositories/providers.dart';

class SyncManager {
  SyncManager(this.ref);

  final Ref ref;
  bool _running = false;

  Future<void> syncNow() async {
    if (_running) return;
    _running = true;
    try {
      await _ensureSignedIn();
      await ref.read(contentRepositoryProvider).refreshCourses();
    } finally {
      _running = false;
    }
  }

  Future<void> _ensureSignedIn() async {
    if (AppConfig.supabaseAnonKey.isEmpty || AppConfig.supabaseSyncPassword.isEmpty) return;
    final client = Supabase.instance.client;
    final session = client.auth.currentSession;
    final expiresAt = session?.expiresAt;
    final valid = expiresAt != null && DateTime.fromMillisecondsSinceEpoch(expiresAt * 1000).isAfter(DateTime.now().add(const Duration(minutes: 1)));
    if (valid) return;
    await client.auth.signInWithPassword(
      email: AppConfig.supabaseSyncEmail,
      password: AppConfig.supabaseSyncPassword,
    );
  }
}

final syncManagerProvider = Provider<SyncManager>((ref) => SyncManager(ref));

final startupSyncProvider = FutureProvider<void>((ref) async {
  final settings = await ref.watch(settingsRepositoryProvider.future);
  if (settings.cloudSyncEnabled) await ref.read(syncManagerProvider).syncNow();
});
