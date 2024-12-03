import '../database.dart';

class TowerWorkflowSetupTable extends SupabaseTable<TowerWorkflowSetupRow> {
  @override
  String get tableName => 'tower_workflow_setup';

  @override
  TowerWorkflowSetupRow createRow(Map<String, dynamic> data) =>
      TowerWorkflowSetupRow(data);
}

class TowerWorkflowSetupRow extends SupabaseDataRow {
  TowerWorkflowSetupRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TowerWorkflowSetupTable();

  int? get fromActionTypeId => getField<int>('from_action_type_id');
  set fromActionTypeId(int? value) =>
      setField<int>('from_action_type_id', value);

  String? get fromAction => getField<String>('from_action');
  set fromAction(String? value) => setField<String>('from_action', value);

  int? get toActionTypeId => getField<int>('to_action_type_id');
  set toActionTypeId(int? value) => setField<int>('to_action_type_id', value);

  String? get toAction => getField<String>('to_action');
  set toAction(String? value) => setField<String>('to_action', value);

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);

  String? get setupSql => getField<String>('setup_sql');
  set setupSql(String? value) => setField<String>('setup_sql', value);
}
