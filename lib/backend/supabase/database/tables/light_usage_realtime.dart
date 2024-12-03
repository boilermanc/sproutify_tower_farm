import '../database.dart';

class LightUsageRealtimeTable extends SupabaseTable<LightUsageRealtimeRow> {
  @override
  String get tableName => 'light_usage_realtime';

  @override
  LightUsageRealtimeRow createRow(Map<String, dynamic> data) =>
      LightUsageRealtimeRow(data);
}

class LightUsageRealtimeRow extends SupabaseDataRow {
  LightUsageRealtimeRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => LightUsageRealtimeTable();

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);

  String? get zoneId => getField<String>('zone_id');
  set zoneId(String? value) => setField<String>('zone_id', value);

  String? get zoneName => getField<String>('zone_name');
  set zoneName(String? value) => setField<String>('zone_name', value);

  DateTime? get periodStart => getField<DateTime>('period_start');
  set periodStart(DateTime? value) => setField<DateTime>('period_start', value);

  DateTime? get periodEnd => getField<DateTime>('period_end');
  set periodEnd(DateTime? value) => setField<DateTime>('period_end', value);

  double? get usageHours => getField<double>('usage_hours');
  set usageHours(double? value) => setField<double>('usage_hours', value);

  double? get energyUsedKwh => getField<double>('energy_used_kwh');
  set energyUsedKwh(double? value) =>
      setField<double>('energy_used_kwh', value);

  double? get cost => getField<double>('cost');
  set cost(double? value) => setField<double>('cost', value);

  double? get kwhPerHour => getField<double>('kwh_per_hour');
  set kwhPerHour(double? value) => setField<double>('kwh_per_hour', value);

  double? get costPerKwh => getField<double>('cost_per_kwh');
  set costPerKwh(double? value) => setField<double>('cost_per_kwh', value);
}
