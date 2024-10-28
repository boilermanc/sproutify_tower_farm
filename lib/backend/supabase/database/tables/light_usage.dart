import '../database.dart';

class LightUsageTable extends SupabaseTable<LightUsageRow> {
  @override
  String get tableName => 'light_usage';

  @override
  LightUsageRow createRow(Map<String, dynamic> data) => LightUsageRow(data);
}

class LightUsageRow extends SupabaseDataRow {
  LightUsageRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => LightUsageTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get farmId => getField<String>('farm_id')!;
  set farmId(String value) => setField<String>('farm_id', value);

  String get zoneId => getField<String>('zone_id')!;
  set zoneId(String value) => setField<String>('zone_id', value);

  String? get lightingFixtureAllocationId =>
      getField<String>('lighting_fixture_allocation_id');
  set lightingFixtureAllocationId(String? value) =>
      setField<String>('lighting_fixture_allocation_id', value);

  double? get usageHours => getField<double>('usage_hours');
  set usageHours(double? value) => setField<double>('usage_hours', value);

  double? get energyUsedKwh => getField<double>('energy_used_kwh');
  set energyUsedKwh(double? value) =>
      setField<double>('energy_used_kwh', value);

  double? get cost => getField<double>('cost');
  set cost(double? value) => setField<double>('cost', value);

  DateTime get periodStart => getField<DateTime>('period_start')!;
  set periodStart(DateTime value) => setField<DateTime>('period_start', value);

  DateTime? get periodEnd => getField<DateTime>('period_end');
  set periodEnd(DateTime? value) => setField<DateTime>('period_end', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
