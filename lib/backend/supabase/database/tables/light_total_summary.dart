import '../database.dart';

class LightTotalSummaryTable extends SupabaseTable<LightTotalSummaryRow> {
  @override
  String get tableName => 'light_total_summary';

  @override
  LightTotalSummaryRow createRow(Map<String, dynamic> data) =>
      LightTotalSummaryRow(data);
}

class LightTotalSummaryRow extends SupabaseDataRow {
  LightTotalSummaryRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => LightTotalSummaryTable();

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);

  DateTime? get periodDay => getField<DateTime>('period_day');
  set periodDay(DateTime? value) => setField<DateTime>('period_day', value);

  DateTime? get periodWeek => getField<DateTime>('period_week');
  set periodWeek(DateTime? value) => setField<DateTime>('period_week', value);

  DateTime? get periodMonth => getField<DateTime>('period_month');
  set periodMonth(DateTime? value) => setField<DateTime>('period_month', value);

  DateTime? get periodQuarter => getField<DateTime>('period_quarter');
  set periodQuarter(DateTime? value) =>
      setField<DateTime>('period_quarter', value);

  DateTime? get periodYear => getField<DateTime>('period_year');
  set periodYear(DateTime? value) => setField<DateTime>('period_year', value);

  double? get totalUsageHours => getField<double>('total_usage_hours');
  set totalUsageHours(double? value) =>
      setField<double>('total_usage_hours', value);

  double? get totalEnergyUsedKwh => getField<double>('total_energy_used_kwh');
  set totalEnergyUsedKwh(double? value) =>
      setField<double>('total_energy_used_kwh', value);

  double? get totalCost => getField<double>('total_cost');
  set totalCost(double? value) => setField<double>('total_cost', value);

  String? get farmName => getField<String>('farm_name');
  set farmName(String? value) => setField<String>('farm_name', value);

  int? get zonesActive => getField<int>('zones_active');
  set zonesActive(int? value) => setField<int>('zones_active', value);

  String? get zonesIncluded => getField<String>('zones_included');
  set zonesIncluded(String? value) => setField<String>('zones_included', value);

  int? get fixtureAllocationsActive =>
      getField<int>('fixture_allocations_active');
  set fixtureAllocationsActive(int? value) =>
      setField<int>('fixture_allocations_active', value);

  String? get city => getField<String>('city');
  set city(String? value) => setField<String>('city', value);

  String? get state => getField<String>('state');
  set state(String? value) => setField<String>('state', value);

  String? get countryCode => getField<String>('country_code');
  set countryCode(String? value) => setField<String>('country_code', value);

  int? get totalFixturesActive => getField<int>('total_fixtures_active');
  set totalFixturesActive(int? value) =>
      setField<int>('total_fixtures_active', value);
}
