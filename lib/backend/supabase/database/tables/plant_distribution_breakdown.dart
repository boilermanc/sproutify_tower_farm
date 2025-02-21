import '../database.dart';

class PlantDistributionBreakdownTable
    extends SupabaseTable<PlantDistributionBreakdownRow> {
  @override
  String get tableName => 'plant_distribution_breakdown';

  @override
  PlantDistributionBreakdownRow createRow(Map<String, dynamic> data) =>
      PlantDistributionBreakdownRow(data);
}

class PlantDistributionBreakdownRow extends SupabaseDataRow {
  PlantDistributionBreakdownRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PlantDistributionBreakdownTable();

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);

  String? get farmName => getField<String>('farm_name');
  set farmName(String? value) => setField<String>('farm_name', value);

  int? get plantId => getField<int>('plant_id');
  set plantId(int? value) => setField<int>('plant_id', value);

  String? get plantName => getField<String>('plant_name');
  set plantName(String? value) => setField<String>('plant_name', value);

  String? get towerStatus => getField<String>('tower_status');
  set towerStatus(String? value) => setField<String>('tower_status', value);

  int? get towerCount => getField<int>('tower_count');
  set towerCount(int? value) => setField<int>('tower_count', value);

  double? get totalPlants => getField<double>('total_plants');
  set totalPlants(double? value) => setField<double>('total_plants', value);

  int? get capacity => getField<int>('capacity');
  set capacity(int? value) => setField<int>('capacity', value);

  double? get utilization => getField<double>('utilization');
  set utilization(double? value) => setField<double>('utilization', value);

  String? get statusColor => getField<String>('status_color');
  set statusColor(String? value) => setField<String>('status_color', value);

  String? get textColor => getField<String>('text_color');
  set textColor(String? value) => setField<String>('text_color', value);
}
