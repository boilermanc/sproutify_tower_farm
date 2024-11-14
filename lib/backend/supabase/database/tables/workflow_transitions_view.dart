import '../database.dart';

class WorkflowTransitionsViewTable
    extends SupabaseTable<WorkflowTransitionsViewRow> {
  @override
  String get tableName => 'workflow_transitions_view';

  @override
  WorkflowTransitionsViewRow createRow(Map<String, dynamic> data) =>
      WorkflowTransitionsViewRow(data);
}

class WorkflowTransitionsViewRow extends SupabaseDataRow {
  WorkflowTransitionsViewRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => WorkflowTransitionsViewTable();

  int? get transitionId => getField<int>('transition_id');
  set transitionId(int? value) => setField<int>('transition_id', value);

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);

  String? get fromAction => getField<String>('from_action');
  set fromAction(String? value) => setField<String>('from_action', value);

  String? get fromColor => getField<String>('from_color');
  set fromColor(String? value) => setField<String>('from_color', value);

  String? get toAction => getField<String>('to_action');
  set toAction(String? value) => setField<String>('to_action', value);

  String? get toColor => getField<String>('to_color');
  set toColor(String? value) => setField<String>('to_color', value);

  bool? get isActive => getField<bool>('is_active');
  set isActive(bool? value) => setField<bool>('is_active', value);

  bool? get requiresCleaning => getField<bool>('requires_cleaning');
  set requiresCleaning(bool? value) =>
      setField<bool>('requires_cleaning', value);

  bool? get isStartState => getField<bool>('is_start_state');
  set isStartState(bool? value) => setField<bool>('is_start_state', value);

  bool? get isEndState => getField<bool>('is_end_state');
  set isEndState(bool? value) => setField<bool>('is_end_state', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  String? get createdBy => getField<String>('created_by');
  set createdBy(String? value) => setField<String>('created_by', value);

  String? get createdByName => getField<String>('created_by_name');
  set createdByName(String? value) =>
      setField<String>('created_by_name', value);
}
