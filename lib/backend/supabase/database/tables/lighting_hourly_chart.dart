import '../database.dart';

class LightingHourlyChartTable extends SupabaseTable<LightingHourlyChartRow> {
  @override
  String get tableName => 'lighting_hourly_chart';

  @override
  LightingHourlyChartRow createRow(Map<String, dynamic> data) =>
      LightingHourlyChartRow(data);
}

class LightingHourlyChartRow extends SupabaseDataRow {
  LightingHourlyChartRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => LightingHourlyChartTable();

  int? get hour => getField<int>('hour');
  set hour(int? value) => setField<int>('hour', value);

  double? get energyKwh => getField<double>('energy_kwh');
  set energyKwh(double? value) => setField<double>('energy_kwh', value);

  bool? get isActive => getField<bool>('is_active');
  set isActive(bool? value) => setField<bool>('is_active', value);

  int? get activeFixtures => getField<int>('active_fixtures');
  set activeFixtures(int? value) => setField<int>('active_fixtures', value);

  int? get totalFixtures => getField<int>('total_fixtures');
  set totalFixtures(int? value) => setField<int>('total_fixtures', value);
}
