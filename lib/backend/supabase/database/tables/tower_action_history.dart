import '../database.dart';

class TowerActionHistoryTable extends SupabaseTable<TowerActionHistoryRow> {
  @override
  String get tableName => 'tower_action_history';

  @override
  TowerActionHistoryRow createRow(Map<String, dynamic> data) =>
      TowerActionHistoryRow(data);
}

class TowerActionHistoryRow extends SupabaseDataRow {
  TowerActionHistoryRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TowerActionHistoryTable();

  int get actionId => getField<int>('action_id')!;
  set actionId(int value) => setField<int>('action_id', value);

  int get towerId => getField<int>('tower_id')!;
  set towerId(int value) => setField<int>('tower_id', value);

  int get actionTypeId => getField<int>('action_type_id')!;
  set actionTypeId(int value) => setField<int>('action_type_id', value);

  int? get plantId => getField<int>('plant_id');
  set plantId(int? value) => setField<int>('plant_id', value);

  int get actionQuantity => getField<int>('action_quantity')!;
  set actionQuantity(int value) => setField<int>('action_quantity', value);

  DateTime get actionDate => getField<DateTime>('action_date')!;
  set actionDate(DateTime value) => setField<DateTime>('action_date', value);

  String get userId => getField<String>('user_id')!;
  set userId(String value) => setField<String>('user_id', value);

  String get farmId => getField<String>('farm_id')!;
  set farmId(String value) => setField<String>('farm_id', value);

  int? get towerContentId => getField<int>('tower_content_id');
  set towerContentId(int? value) => setField<int>('tower_content_id', value);

  DateTime? get seededDate => getField<DateTime>('seeded_date');
  set seededDate(DateTime? value) => setField<DateTime>('seeded_date', value);

  DateTime? get expectedReadyDate => getField<DateTime>('expected_ready_date');
  set expectedReadyDate(DateTime? value) =>
      setField<DateTime>('expected_ready_date', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  DateTime get updatedAt => getField<DateTime>('updated_at')!;
  set updatedAt(DateTime value) => setField<DateTime>('updated_at', value);

  int get towerCapacity => getField<int>('tower_capacity')!;
  set towerCapacity(int value) => setField<int>('tower_capacity', value);
}
