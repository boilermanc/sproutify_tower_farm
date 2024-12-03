import '../database.dart';

class TowerWorkflowTransitionsTable
    extends SupabaseTable<TowerWorkflowTransitionsRow> {
  @override
  String get tableName => 'tower_workflow_transitions';

  @override
  TowerWorkflowTransitionsRow createRow(Map<String, dynamic> data) =>
      TowerWorkflowTransitionsRow(data);
}

class TowerWorkflowTransitionsRow extends SupabaseDataRow {
  TowerWorkflowTransitionsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TowerWorkflowTransitionsTable();

  int? get transitionId => getField<int>('transition_id');
  set transitionId(int? value) => setField<int>('transition_id', value);

  String? get fromAction => getField<String>('from_action');
  set fromAction(String? value) => setField<String>('from_action', value);

  String? get toAction => getField<String>('to_action');
  set toAction(String? value) => setField<String>('to_action', value);

  int? get fromActionTypeId => getField<int>('from_action_type_id');
  set fromActionTypeId(int? value) =>
      setField<int>('from_action_type_id', value);

  int? get toActionTypeId => getField<int>('to_action_type_id');
  set toActionTypeId(int? value) => setField<int>('to_action_type_id', value);

  bool? get isActive => getField<bool>('is_active');
  set isActive(bool? value) => setField<bool>('is_active', value);

  bool? get requiresCleaning => getField<bool>('requires_cleaning');
  set requiresCleaning(bool? value) =>
      setField<bool>('requires_cleaning', value);

  bool? get isEndState => getField<bool>('is_end_state');
  set isEndState(bool? value) => setField<bool>('is_end_state', value);

  bool? get isStartState => getField<bool>('is_start_state');
  set isStartState(bool? value) => setField<bool>('is_start_state', value);

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);
}
