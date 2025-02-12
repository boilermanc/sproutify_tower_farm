import '../database.dart';

class TowerStateLogsTable extends SupabaseTable<TowerStateLogsRow> {
  @override
  String get tableName => 'tower_state_logs';

  @override
  TowerStateLogsRow createRow(Map<String, dynamic> data) =>
      TowerStateLogsRow(data);
}

class TowerStateLogsRow extends SupabaseDataRow {
  TowerStateLogsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TowerStateLogsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int get towerId => getField<int>('tower_id')!;
  set towerId(int value) => setField<int>('tower_id', value);

  String? get fromState => getField<String>('from_state');
  set fromState(String? value) => setField<String>('from_state', value);

  String? get toState => getField<String>('to_state');
  set toState(String? value) => setField<String>('to_state', value);

  int? get actionId => getField<int>('action_id');
  set actionId(int? value) => setField<int>('action_id', value);

  String? get notes => getField<String>('notes');
  set notes(String? value) => setField<String>('notes', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  int? get plantId => getField<int>('plant_id');
  set plantId(int? value) => setField<int>('plant_id', value);
}
