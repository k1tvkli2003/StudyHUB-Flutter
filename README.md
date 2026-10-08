# StudyHUB-Flutter

Local-first AI study planner and interactive PDF library for mobile and
desktop. Companion Flutter client to the StudyHUB web platform: PDF reading
with annotation, study planning, review flows, pomodoro, dashboard/stats, and
Supabase-backed sync.

## What's inside

- `lib/features/` — planner, lesson_reader, pdf_reader, library, dashboard,
  review, stats, explore, mindmap, pomodoro, onboarding, security, settings,
  shell/shared.
- `lib/` platform core — `app/` (app widget, go_router routing), `core/`
  (config, notifications, platform, widgets), `data/`, `design_system/`,
  `sync/`.
- `test/` — model/database-workflow/web-manifest tests; `tool/`,
  `scripts/` helpers; `codemagic.yaml` — CI (analyze + test workflow,
  Android release lane); `vercel.json`, `web/` for the web build.
- Key packages: Riverpod, go_router, drift + sqlite3_flutter_libs,
  supabase_flutter, pdfrx, flutter_markdown, flutter_math_fork,
  flutter_local_notifications, local_auth, home_widget, camera plus
  google_mlkit_text_recognition (OCR), permission_handler, file_selector.

## Tech stack

Flutter 3.12+ (Dart), drift/SQLite local store, Supabase sync, Codemagic CI.
Version `1.0.0+1`, private package (`publish_to: none`).

## Getting started

Standard Flutter flow: `flutter pub get`,
`dart run build_runner build --delete-conflicting-outputs`, `flutter
analyze`, `flutter test`; Android release lane for device builds (see
`codemagic.yaml`). No checked-in environment file, so Supabase URL/keys
are supplied at build/run time per the web project's `.env.example` pattern.

## Status

Early client under construction — feature surface is broad (15 feature
modules) at version 1.0.0+1; treat depth per feature as unverified until
exercised on device.
