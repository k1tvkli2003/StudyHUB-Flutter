package com.studyhub.app

import android.content.Context
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel

class MainActivity : FlutterActivity() {
    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, "studyhub/legacy_migration")
            .setMethodCallHandler { call, result ->
                when (call.method) {
                    "readLegacyPreferences" -> result.success(readLegacyPreferences())
                    else -> result.notImplemented()
                }
            }
    }

    private fun readLegacyPreferences(): Map<String, Any?> {
        val out = linkedMapOf<String, Any?>()
        val studyHubPrefs = getSharedPreferences("StudyHubPrefs", Context.MODE_PRIVATE)
        copyString(studyHubPrefs, out, "GEMINI_BASE_URL")
        copyString(studyHubPrefs, out, "AI_MODEL")

        val syncPrefs = getSharedPreferences("pdf_sync_prefs", Context.MODE_PRIVATE)
        val deleted = syncPrefs.getStringSet("deleted_remote_ids", emptySet())?.toList().orEmpty()
        if (deleted.isNotEmpty()) out["deleted_remote_ids"] = deleted

        // DataStore `studyhub_settings` is a protobuf file in the legacy app. The Dart side treats
        // this bridge as best-effort; the SQLite database remains the source of truth for study data.
        return out
    }

    private fun copyString(prefs: android.content.SharedPreferences, out: MutableMap<String, Any?>, key: String) {
        if (prefs.contains(key)) out[key] = prefs.getString(key, null)
    }
}
