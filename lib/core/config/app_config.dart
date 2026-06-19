class AppConfig {
  const AppConfig._();

  static const supabaseUrl = String.fromEnvironment(
    'SUPABASE_URL',
    defaultValue: 'https://evyjrbwibwrdkjakooor.supabase.co',
  );

  static const supabaseAnonKey = String.fromEnvironment('SUPABASE_ANON_KEY');
  static const supabaseSyncEmail = String.fromEnvironment('SUPABASE_SYNC_EMAIL', defaultValue: 'owner@studyhub.app');
  static const supabaseSyncPassword = String.fromEnvironment('SUPABASE_SYNC_PASSWORD');
  static const avalaiApiKey = String.fromEnvironment('AVALAI_API_KEY');
  static const avalaiBaseUrl = String.fromEnvironment('AVALAI_BASE_URL', defaultValue: 'https://api.avalai.ir');
  static const defaultAiModel = String.fromEnvironment('AI_MODEL', defaultValue: 'gemini-3.1-flash-lite');

  static const imageBaseUrlFallback =
      'https://evyjrbwibwrdkjakooor.supabase.co/storage/v1/object/public/lesson-images/';
}
