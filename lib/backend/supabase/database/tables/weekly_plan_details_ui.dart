import '../database.dart';

class WeeklyPlanDetailsUiTable extends SupabaseTable<WeeklyPlanDetailsUiRow> {
  @override
  String get tableName => 'weekly_plan_details_ui';

  @override
  WeeklyPlanDetailsUiRow createRow(Map<String, dynamic> data) =>
      WeeklyPlanDetailsUiRow(data);
}

class WeeklyPlanDetailsUiRow extends SupabaseDataRow {
  WeeklyPlanDetailsUiRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => WeeklyPlanDetailsUiTable();

  String? get itemId => getField<String>('item_id');
  set itemId(String? value) => setField<String>('item_id', value);

  String? get planId => getField<String>('plan_id');
  set planId(String? value) => setField<String>('plan_id', value);

  int? get plantId => getField<int>('plant_id');
  set plantId(int? value) => setField<int>('plant_id', value);

  String? get plantName => getField<String>('plant_name');
  set plantName(String? value) => setField<String>('plant_name', value);

  int? get seedsPerPort => getField<int>('seeds_per_port');
  set seedsPerPort(int? value) => setField<int>('seeds_per_port', value);

  int? get towerCount => getField<int>('tower_count');
  set towerCount(int? value) => setField<int>('tower_count', value);

  int? get portsPerTower => getField<int>('ports_per_tower');
  set portsPerTower(int? value) => setField<int>('ports_per_tower', value);

  int? get totalPorts => getField<int>('total_ports');
  set totalPorts(int? value) => setField<int>('total_ports', value);

  int? get rowsNeeded => getField<int>('rows_needed');
  set rowsNeeded(int? value) => setField<int>('rows_needed', value);

  int? get seedsToPlant => getField<int>('seeds_to_plant');
  set seedsToPlant(int? value) => setField<int>('seeds_to_plant', value);

  int? get overageSeeds => getField<int>('overage_seeds');
  set overageSeeds(int? value) => setField<int>('overage_seeds', value);

  bool? get isCompleted => getField<bool>('is_completed');
  set isCompleted(bool? value) => setField<bool>('is_completed', value);

  DateTime? get completedAt => getField<DateTime>('completed_at');
  set completedAt(DateTime? value) => setField<DateTime>('completed_at', value);

  String? get towerConfig => getField<String>('tower_config');
  set towerConfig(String? value) => setField<String>('tower_config', value);
}
