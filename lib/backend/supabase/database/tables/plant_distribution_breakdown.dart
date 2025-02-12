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

  String? get plantName => getField<String>('plant_name');
  set plantName(String? value) => setField<String>('plant_name', value);

  String? get growthStatus => getField<String>('growth_status');
  set growthStatus(String? value) => setField<String>('growth_status', value);

  String? get statusColor => getField<String>('status_color');
  set statusColor(String? value) => setField<String>('status_color', value);

  String? get textColor => getField<String>('text_color');
  set textColor(String? value) => setField<String>('text_color', value);

  int? get towerCount => getField<int>('tower_count');
  set towerCount(int? value) => setField<int>('tower_count', value);

  double? get totalPlants => getField<double>('total_plants');
  set totalPlants(double? value) => setField<double>('total_plants', value);

  int? get totalPossiblePorts => getField<int>('total_possible_ports');
  set totalPossiblePorts(int? value) =>
      setField<int>('total_possible_ports', value);

  double? get utilizationPercentage =>
      getField<double>('utilization_percentage');
  set utilizationPercentage(double? value) =>
      setField<double>('utilization_percentage', value);
}
