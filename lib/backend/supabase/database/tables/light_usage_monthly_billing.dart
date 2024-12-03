import '../database.dart';

class LightUsageMonthlyBillingTable
    extends SupabaseTable<LightUsageMonthlyBillingRow> {
  @override
  String get tableName => 'light_usage_monthly_billing';

  @override
  LightUsageMonthlyBillingRow createRow(Map<String, dynamic> data) =>
      LightUsageMonthlyBillingRow(data);
}

class LightUsageMonthlyBillingRow extends SupabaseDataRow {
  LightUsageMonthlyBillingRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => LightUsageMonthlyBillingTable();

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);

  String? get zoneId => getField<String>('zone_id');
  set zoneId(String? value) => setField<String>('zone_id', value);

  DateTime? get billingMonth => getField<DateTime>('billing_month');
  set billingMonth(DateTime? value) =>
      setField<DateTime>('billing_month', value);

  double? get monthlyKwh => getField<double>('monthly_kwh');
  set monthlyKwh(double? value) => setField<double>('monthly_kwh', value);

  double? get monthlyCost => getField<double>('monthly_cost');
  set monthlyCost(double? value) => setField<double>('monthly_cost', value);

  int? get daysWithUsage => getField<int>('days_with_usage');
  set daysWithUsage(int? value) => setField<int>('days_with_usage', value);

  String? get zoneName => getField<String>('zone_name');
  set zoneName(String? value) => setField<String>('zone_name', value);

  double? get avgDailyKwh => getField<double>('avg_daily_kwh');
  set avgDailyKwh(double? value) => setField<double>('avg_daily_kwh', value);

  double? get avgDailyCost => getField<double>('avg_daily_cost');
  set avgDailyCost(double? value) => setField<double>('avg_daily_cost', value);
}
