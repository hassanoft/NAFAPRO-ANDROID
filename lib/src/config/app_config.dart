class AppConfig {
  static const supabaseUrl = String.fromEnvironment('SUPABASE_URL');
  static const supabaseAnonKey = String.fromEnvironment('SUPABASE_ANON_KEY');

  static const appName = 'NAFAPRO';
  static const currency = 'FCFA';
  static const freeInvoiceLimit = 5;
  static const proMonthlyPrice = 1500;
  static const proYearlyPrice = 12000;
}
