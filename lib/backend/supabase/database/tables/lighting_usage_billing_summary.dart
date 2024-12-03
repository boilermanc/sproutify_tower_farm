import '../database.dart';

class LightingUsageBillingSummaryTable
    extends SupabaseTable<LightingUsageBillingSummaryRow> {
  @override
  String get tableName => 'lighting_usage_billing_summary';

  @override
  LightingUsageBillingSummaryRow createRow(Map<String, dynamic> data) =>
      LightingUsageBillingSummaryRow(data);
}

class LightingUsageBillingSummaryRow extends SupabaseDataRow {
  LightingUsageBillingSummaryRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => LightingUsageBillingSummaryTable();

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);

  DateTime? get billingMonth => getField<DateTime>('billing_month');
  set billingMonth(DateTime? value) =>
      setField<DateTime>('billing_month', value);

  double? get totalKwh => getField<double>('total_kwh');
  set totalKwh(double? value) => setField<double>('total_kwh', value);

  double? get totalCost => getField<double>('total_cost');
  set totalCost(double? value) => setField<double>('total_cost', value);
}
