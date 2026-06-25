#!/usr/bin/env bash
set -euo pipefail

if ! command -v flutter >/dev/null 2>&1; then
  export FLUTTER_HOME="${FLUTTER_HOME:-$HOME/flutter}"
  if [ ! -d "$FLUTTER_HOME/bin" ]; then
    git clone --depth 1 --branch stable https://github.com/flutter/flutter.git "$FLUTTER_HOME"
  fi
  export PATH="$FLUTTER_HOME/bin:$PATH"
fi

flutter config --enable-web
flutter pub get
dart run build_runner build --delete-conflicting-outputs
dart run tool/prepare_web.dart
flutter build web \
  --release \
  --base-href / \
  --dart-define=AVALAI_API_KEY="${AVALAI_API_KEY:-}" \
  --dart-define=AVALAI_BASE_URL="${AVALAI_BASE_URL:-https://api.avalai.ir}" \
  --dart-define=AI_MODEL="${AI_MODEL:-gemini-3.1-flash-lite}" \
  --dart-define=SUPABASE_URL="${SUPABASE_URL:-https://evyjrbwibwrdkjakooor.supabase.co}" \
  --dart-define=SUPABASE_ANON_KEY="${SUPABASE_ANON_KEY:-}" \
  --dart-define=SUPABASE_SYNC_EMAIL="${SUPABASE_SYNC_EMAIL:-owner@studyhub.app}" \
  --dart-define=SUPABASE_SYNC_PASSWORD="${SUPABASE_SYNC_PASSWORD:-}"
