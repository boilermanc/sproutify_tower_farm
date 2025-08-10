import '../database.dart';

class SeedingPlanTowersTable extends SupabaseTable<SeedingPlanTowersRow> {
  @override
  String get tableName => 'seeding_plan_towers';

  @override
  SeedingPlanTowersRow createRow(Map<String, dynamic> data) =>
      SeedingPlanTowersRow(data);
}

class SeedingPlanTowersRow extends SupabaseDataRow {
  SeedingPlanTowersRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SeedingPlanTowersTable();

  String get itemId => getField<String>('item_id')!;
  set itemId(String value) => setField<String>('item_id', value);

  String get planId => getField<String>('plan_id')!;
  set planId(String value) => setField<String>('plan_id', value);

  int get plantId => getField<int>('plant_id')!;
  set plantId(int value) => setField<int>('plant_id', value);

  int get towerCount => getField<int>('tower_count')!;
  set towerCount(int value) => setField<int>('tower_count', value);

  int get portsPerTower => getField<int>('ports_per_tower')!;
  set portsPerTower(int value) => setField<int>('ports_per_tower', value);

  int get totalPorts => getField<int>('total_ports')!;
  set totalPorts(int value) => setField<int>('total_ports', value);

  int get rowsNeeded => getField<int>('rows_needed')!;
  set rowsNeeded(int value) => setField<int>('rows_needed', value);

  int get seedsToPlant => getField<int>('seeds_to_plant')!;
  set seedsToPlant(int value) => setField<int>('seeds_to_plant', value);

  int get overageSeeds => getField<int>('overage_seeds')!;
  set overageSeeds(int value) => setField<int>('overage_seeds', value);

  bool? get isCompleted => getField<bool>('is_completed');
  set isCompleted(bool? value) => setField<bool>('is_completed', value);

  DateTime? get completedAt => getField<DateTime>('completed_at');
  set completedAt(DateTime? value) => setField<DateTime>('completed_at', value);

  String? get completedBy => getField<String>('completed_by');
  set completedBy(String? value) => setField<String>('completed_by', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);
}
