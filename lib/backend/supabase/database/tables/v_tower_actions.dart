import '../database.dart';

class VTowerActionsTable extends SupabaseTable<VTowerActionsRow> {
  @override
  String get tableName => 'v_tower_actions';

  @override
  VTowerActionsRow createRow(Map<String, dynamic> data) =>
      VTowerActionsRow(data);
}

class VTowerActionsRow extends SupabaseDataRow {
  VTowerActionsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VTowerActionsTable();

  int? get actionId => getField<int>('action_id');
  set actionId(int? value) => setField<int>('action_id', value);

  int? get towerId => getField<int>('tower_id');
  set towerId(int? value) => setField<int>('tower_id', value);

  int? get actionTypeId => getField<int>('action_type_id');
  set actionTypeId(int? value) => setField<int>('action_type_id', value);

  String? get actionName => getField<String>('action_name');
  set actionName(String? value) => setField<String>('action_name', value);

  int? get plantId => getField<int>('plant_id');
  set plantId(int? value) => setField<int>('plant_id', value);

  String? get plantName => getField<String>('plant_name');
  set plantName(String? value) => setField<String>('plant_name', value);

  int? get actionQuantity => getField<int>('action_quantity');
  set actionQuantity(int? value) => setField<int>('action_quantity', value);

  int? get towerCapacity => getField<int>('tower_capacity');
  set towerCapacity(int? value) => setField<int>('tower_capacity', value);

  double? get capacityUsedPercent => getField<double>('capacity_used_percent');
  set capacityUsedPercent(double? value) =>
      setField<double>('capacity_used_percent', value);

  DateTime? get actionDate => getField<DateTime>('action_date');
  set actionDate(DateTime? value) => setField<DateTime>('action_date', value);

  DateTime? get seededDate => getField<DateTime>('seeded_date');
  set seededDate(DateTime? value) => setField<DateTime>('seeded_date', value);

  DateTime? get expectedReadyDate => getField<DateTime>('expected_ready_date');
  set expectedReadyDate(DateTime? value) =>
      setField<DateTime>('expected_ready_date', value);
}
