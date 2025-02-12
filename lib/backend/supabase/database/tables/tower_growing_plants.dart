import '../database.dart';

class TowerGrowingPlantsTable extends SupabaseTable<TowerGrowingPlantsRow> {
  @override
  String get tableName => 'tower_growing_plants';

  @override
  TowerGrowingPlantsRow createRow(Map<String, dynamic> data) =>
      TowerGrowingPlantsRow(data);
}

class TowerGrowingPlantsRow extends SupabaseDataRow {
  TowerGrowingPlantsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TowerGrowingPlantsTable();

  int? get towerId => getField<int>('tower_id');
  set towerId(int? value) => setField<int>('tower_id', value);

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);

  String? get towerIdentifier => getField<String>('tower_identifier');
  set towerIdentifier(String? value) =>
      setField<String>('tower_identifier', value);

  String? get plantName => getField<String>('plant_name');
  set plantName(String? value) => setField<String>('plant_name', value);

  int? get quantity => getField<int>('quantity');
  set quantity(int? value) => setField<int>('quantity', value);

  DateTime? get datePlanted => getField<DateTime>('date_planted');
  set datePlanted(DateTime? value) => setField<DateTime>('date_planted', value);

  int? get plantingActionId => getField<int>('planting_action_id');
  set plantingActionId(int? value) =>
      setField<int>('planting_action_id', value);

  int? get plantId => getField<int>('plant_id');
  set plantId(int? value) => setField<int>('plant_id', value);

  int? get contentId => getField<int>('content_id');
  set contentId(int? value) => setField<int>('content_id', value);
}
