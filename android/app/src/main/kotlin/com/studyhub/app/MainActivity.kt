package com.studyhub.app

import android.content.Context
import android.content.SharedPreferences
import androidx.datastore.preferences.core.Preferences
import androidx.datastore.preferences.core.booleanPreferencesKey
import androidx.datastore.preferences.core.floatPreferencesKey
import androidx.datastore.preferences.core.intPreferencesKey
import androidx.datastore.preferences.core.stringPreferencesKey
import androidx.datastore.preferences.core.stringSetPreferencesKey
import androidx.datastore.preferences.preferencesDataStore
import io.flutter.embedding.android.FlutterFragmentActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel
import kotlinx.coroutines.flow.first
import kotlinx.coroutines.runBlocking

private val Context.settingsDataStore by preferencesDataStore(name = "studyhub_settings")

class MainActivity : FlutterFragmentActivity() {
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
        runCatching { readDataStorePreferences(out) }

        val studyHubPrefs = getSharedPreferences("StudyHubPrefs", Context.MODE_PRIVATE)
        copyString(studyHubPrefs, out, "GEMINI_BASE_URL")
        copyString(studyHubPrefs, out, "AI_MODEL")
        copyAllPdfPagePositions(studyHubPrefs, out)

        val syncPrefs = getSharedPreferences("pdf_sync_prefs", Context.MODE_PRIVATE)
        val deleted = syncPrefs.getStringSet("deleted_remote_ids", emptySet())?.toList().orEmpty()
        if (deleted.isNotEmpty()) out["deleted_remote_ids"] = deleted
        return out
    }

    private fun readDataStorePreferences(out: MutableMap<String, Any?>) = runBlocking {
        val prefs = applicationContext.settingsDataStore.data.first()
        copyString(prefs, out, "theme_mode")
        copyString(prefs, out, "tts_voice")
        copyFloat(prefs, out, "tts_speed")
        copyBoolean(prefs, out, "onboarding_completed")
        copyBoolean(prefs, out, "biometric_lock_enabled")
        copyBoolean(prefs, out, "review_reminder_enabled")
        copyInt(prefs, out, "review_reminder_hour")
        copyBoolean(prefs, out, "planner_reminder_enabled")
        copyBoolean(prefs, out, "weekly_report_enabled")
        copyInt(prefs, out, "daily_goal_minutes")
        copyInt(prefs, out, "minutes_per_page")
        copyString(prefs, out, "layout_density")
        copyFloat(prefs, out, "font_scale")
        copyBoolean(prefs, out, "cloud_sync_enabled")
        copyBoolean(prefs, out, "debug_overlay_enabled")
        prefs[stringSetPreferencesKey("enrolled_courses")]?.let { out["enrolled_courses"] = it.toList().sorted() }
    }

    private fun copyString(prefs: SharedPreferences, out: MutableMap<String, Any?>, key: String) {
        if (prefs.contains(key)) out[key] = prefs.getString(key, null)
    }

    private fun copyAllPdfPagePositions(prefs: SharedPreferences, out: MutableMap<String, Any?>) {
        prefs.all.forEach { (key, value) ->
            if (key.startsWith("pdf_page_") && value is Int) out[key] = value
        }
    }

    private fun copyString(prefs: Preferences, out: MutableMap<String, Any?>, key: String) {
        prefs[stringPreferencesKey(key)]?.let { out[key] = it }
    }

    private fun copyBoolean(prefs: Preferences, out: MutableMap<String, Any?>, key: String) {
        prefs[booleanPreferencesKey(key)]?.let { out[key] = it }
    }

    private fun copyInt(prefs: Preferences, out: MutableMap<String, Any?>, key: String) {
        prefs[intPreferencesKey(key)]?.let { out[key] = it }
    }

    private fun copyFloat(prefs: Preferences, out: MutableMap<String, Any?>, key: String) {
        prefs[floatPreferencesKey(key)]?.let { out[key] = it.toDouble() }
    }
}
