import '../database.dart';

class TowerHistoryTable extends SupabaseTable<TowerHistoryRow> {
  @override
  String get tableName => 'tower_history';

  @override
  TowerHistoryRow createRow(Map<String, dynamic> data) => TowerHistoryRow(data);
}

class TowerHistoryRow extends SupabaseDataRow {
  TowerHistoryRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TowerHistoryTable();

  int? get actionId => getField<int>('action_id');
  set actionId(int? value) => setField<int>('action_id', value);

  String? get towerIdentifier => getField<String>('tower_identifier');
  set towerIdentifier(String? value) =>
      setField<String>('tower_identifier', value);

  int? get towerId => getField<int>('tower_id');
  set towerId(int? value) => setField<int>('tower_id', value);

  String? get state => getField<String>('state');
  set state(String? value) => setField<String>('state', value);

  int? get quantity => getField<int>('quantity');
  set quantity(int? value) => setField<int>('quantity', value);

  DateTime? get actionDate => getField<DateTime>('action_date');
  set actionDate(DateTime? value) => setField<DateTime>('action_date', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get updatedBy => getField<String>('updated_by');
  set updatedBy(String? value) => setField<String>('updated_by', value);

  String? get previousState => getField<String>('previous_state');
  set previousState(String? value) => setField<String>('previous_state', value);
}
