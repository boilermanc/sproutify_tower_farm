import '../database.dart';

class LightUsageCostTiersTable extends SupabaseTable<LightUsageCostTiersRow> {
  @override
  String get tableName => 'light_usage_cost_tiers';

  @override
  LightUsageCostTiersRow createRow(Map<String, dynamic> data) =>
      LightUsageCostTiersRow(data);
}

class LightUsageCostTiersRow extends SupabaseDataRow {
  LightUsageCostTiersRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => LightUsageCostTiersTable();

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);

  DateTime? get billingMonth => getField<DateTime>('billing_month');
  set billingMonth(DateTime? value) =>
      setField<DateTime>('billing_month', value);

  double? get totalMonthlyKwh => getField<double>('total_monthly_kwh');
  set totalMonthlyKwh(double? value) =>
      setField<double>('total_monthly_kwh', value);

  double? get tier1Kwh => getField<double>('tier1_kwh');
  set tier1Kwh(double? value) => setField<double>('tier1_kwh', value);

  double? get tier2Kwh => getField<double>('tier2_kwh');
  set tier2Kwh(double? value) => setField<double>('tier2_kwh', value);

  double? get tier3Kwh => getField<double>('tier3_kwh');
  set tier3Kwh(double? value) => setField<double>('tier3_kwh', value);

  double? get tier1Cost => getField<double>('tier1_cost');
  set tier1Cost(double? value) => setField<double>('tier1_cost', value);

  double? get tier2Cost => getField<double>('tier2_cost');
  set tier2Cost(double? value) => setField<double>('tier2_cost', value);

  double? get tier3Cost => getField<double>('tier3_cost');
  set tier3Cost(double? value) => setField<double>('tier3_cost', value);

  double? get totalCost => getField<double>('total_cost');
  set totalCost(double? value) => setField<double>('total_cost', value);

  int? get daysInPeriod => getField<int>('days_in_period');
  set daysInPeriod(int? value) => setField<int>('days_in_period', value);
}
