import '../database.dart';

class HierarchicalPestPressureTable
    extends SupabaseTable<HierarchicalPestPressureRow> {
  @override
  String get tableName => 'hierarchical_pest_pressure';

  @override
  HierarchicalPestPressureRow createRow(Map<String, dynamic> data) =>
      HierarchicalPestPressureRow(data);
}

class HierarchicalPestPressureRow extends SupabaseDataRow {
  HierarchicalPestPressureRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => HierarchicalPestPressureTable();

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);

  int? get towerId => getField<int>('tower_id');
  set towerId(int? value) => setField<int>('tower_id', value);

  String? get tableZoneId => getField<String>('table_zone_id');
  set tableZoneId(String? value) => setField<String>('table_zone_id', value);

  String? get locationId => getField<String>('location_id');
  set locationId(String? value) => setField<String>('location_id', value);

  String? get locationCode => getField<String>('location_code');
  set locationCode(String? value) => setField<String>('location_code', value);

  String? get locationName => getField<String>('location_name');
  set locationName(String? value) => setField<String>('location_name', value);

  String? get pestType => getField<String>('pest_type');
  set pestType(String? value) => setField<String>('pest_type', value);

  int? get pests7Days => getField<int>('pests_7_days');
  set pests7Days(int? value) => setField<int>('pests_7_days', value);

  int? get pestsPrev7Days => getField<int>('pests_prev_7_days');
  set pestsPrev7Days(int? value) => setField<int>('pests_prev_7_days', value);

  double? get avgConfidence7Days => getField<double>('avg_confidence_7_days');
  set avgConfidence7Days(double? value) =>
      setField<double>('avg_confidence_7_days', value);

  int? get zonePests7Days => getField<int>('zone_pests_7_days');
  set zonePests7Days(int? value) => setField<int>('zone_pests_7_days', value);

  double? get zoneAvgPerLocation => getField<double>('zone_avg_per_location');
  set zoneAvgPerLocation(double? value) =>
      setField<double>('zone_avg_per_location', value);

  int? get towerPests7Days => getField<int>('tower_pests_7_days');
  set towerPests7Days(int? value) => setField<int>('tower_pests_7_days', value);

  double? get towerAvgPerZone => getField<double>('tower_avg_per_zone');
  set towerAvgPerZone(double? value) =>
      setField<double>('tower_avg_per_zone', value);

  double? get locationVsZonePressurePct =>
      getField<double>('location_vs_zone_pressure_pct');
  set locationVsZonePressurePct(double? value) =>
      setField<double>('location_vs_zone_pressure_pct', value);

  double? get zoneVsTowerPressurePct =>
      getField<double>('zone_vs_tower_pressure_pct');
  set zoneVsTowerPressurePct(double? value) =>
      setField<double>('zone_vs_tower_pressure_pct', value);

  String? get pressureLevel => getField<String>('pressure_level');
  set pressureLevel(String? value) => setField<String>('pressure_level', value);
}
