import '../database.dart';

class TowerStatusTable extends SupabaseTable<TowerStatusRow> {
  @override
  String get tableName => 'tower_status';

  @override
  TowerStatusRow createRow(Map<String, dynamic> data) => TowerStatusRow(data);
}

class TowerStatusRow extends SupabaseDataRow {
  TowerStatusRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TowerStatusTable();

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);

  int? get towerId => getField<int>('tower_id');
  set towerId(int? value) => setField<int>('tower_id', value);

  String? get towerIdentifier => getField<String>('tower_identifier');
  set towerIdentifier(String? value) =>
      setField<String>('tower_identifier', value);

  int? get actionTypeId => getField<int>('action_type_id');
  set actionTypeId(int? value) => setField<int>('action_type_id', value);

  String? get currentState => getField<String>('current_state');
  set currentState(String? value) => setField<String>('current_state', value);

  int? get quantity => getField<int>('quantity');
  set quantity(int? value) => setField<int>('quantity', value);

  DateTime? get actionDate => getField<DateTime>('action_date');
  set actionDate(DateTime? value) => setField<DateTime>('action_date', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  String? get lastUpdatedBy => getField<String>('last_updated_by');
  set lastUpdatedBy(String? value) =>
      setField<String>('last_updated_by', value);

  String? get stateColor => getField<String>('state_color');
  set stateColor(String? value) => setField<String>('state_color', value);

  String? get stateBackgroundColor =>
      getField<String>('state_background_color');
  set stateBackgroundColor(String? value) =>
      setField<String>('state_background_color', value);
}
