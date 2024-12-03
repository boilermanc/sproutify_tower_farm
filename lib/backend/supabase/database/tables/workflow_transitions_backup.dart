import '../database.dart';

class WorkflowTransitionsBackupTable
    extends SupabaseTable<WorkflowTransitionsBackupRow> {
  @override
  String get tableName => 'workflow_transitions_backup';

  @override
  WorkflowTransitionsBackupRow createRow(Map<String, dynamic> data) =>
      WorkflowTransitionsBackupRow(data);
}

class WorkflowTransitionsBackupRow extends SupabaseDataRow {
  WorkflowTransitionsBackupRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => WorkflowTransitionsBackupTable();

  int? get transitionId => getField<int>('transition_id');
  set transitionId(int? value) => setField<int>('transition_id', value);

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

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  String? get createdBy => getField<String>('created_by');
  set createdBy(String? value) => setField<String>('created_by', value);
}
