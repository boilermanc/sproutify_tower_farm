import '../database.dart';

class TowerProductivityViewTable
    extends SupabaseTable<TowerProductivityViewRow> {
  @override
  String get tableName => 'tower_productivity_view';

  @override
  TowerProductivityViewRow createRow(Map<String, dynamic> data) =>
      TowerProductivityViewRow(data);
}

class TowerProductivityViewRow extends SupabaseDataRow {
  TowerProductivityViewRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TowerProductivityViewTable();

  int? get towerId => getField<int>('tower_id');
  set towerId(int? value) => setField<int>('tower_id', value);

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);

  String? get towerIdentifier => getField<String>('tower_identifier');
  set towerIdentifier(String? value) =>
      setField<String>('tower_identifier', value);

  DateTime? get month => getField<DateTime>('month');
  set month(DateTime? value) => setField<DateTime>('month', value);

  int? get plantingsCount => getField<int>('plantings_count');
  set plantingsCount(int? value) => setField<int>('plantings_count', value);

  int? get plantsPlanted => getField<int>('plants_planted');
  set plantsPlanted(int? value) => setField<int>('plants_planted', value);

  int? get harvestsCount => getField<int>('harvests_count');
  set harvestsCount(int? value) => setField<int>('harvests_count', value);

  int? get plantsHarvested => getField<int>('plants_harvested');
  set plantsHarvested(int? value) => setField<int>('plants_harvested', value);

  int? get cleaningCount => getField<int>('cleaning_count');
  set cleaningCount(int? value) => setField<int>('cleaning_count', value);

  String? get plantsGrown => getField<String>('plants_grown');
  set plantsGrown(String? value) => setField<String>('plants_grown', value);

  double? get harvestSuccessRate => getField<double>('harvest_success_rate');
  set harvestSuccessRate(double? value) =>
      setField<double>('harvest_success_rate', value);

  double? get avgDaysToHarvest => getField<double>('avg_days_to_harvest');
  set avgDaysToHarvest(double? value) =>
      setField<double>('avg_days_to_harvest', value);
}
