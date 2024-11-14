import '../database.dart';

class TaskDetailViewTable extends SupabaseTable<TaskDetailViewRow> {
  @override
  String get tableName => 'task_detail_view';

  @override
  TaskDetailViewRow createRow(Map<String, dynamic> data) =>
      TaskDetailViewRow(data);
}

class TaskDetailViewRow extends SupabaseDataRow {
  TaskDetailViewRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TaskDetailViewTable();

  int? get taskId => getField<int>('task_id');
  set taskId(int? value) => setField<int>('task_id', value);

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);

  String? get taskType => getField<String>('task_type');
  set taskType(String? value) => setField<String>('task_type', value);

  String? get taskDescription => getField<String>('task_description');
  set taskDescription(String? value) =>
      setField<String>('task_description', value);

  int? get priorityLevel => getField<int>('priority_level');
  set priorityLevel(int? value) => setField<int>('priority_level', value);

  String? get estimatedDuration => getField<String>('estimated_duration');
  set estimatedDuration(String? value) =>
      setField<String>('estimated_duration', value);

  bool? get requiresVerification => getField<bool>('requires_verification');
  set requiresVerification(bool? value) =>
      setField<bool>('requires_verification', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  DateTime? get dueDate => getField<DateTime>('due_date');
  set dueDate(DateTime? value) => setField<DateTime>('due_date', value);

  String? get notes => getField<String>('notes');
  set notes(String? value) => setField<String>('notes', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  String? get assignedTo => getField<String>('assigned_to');
  set assignedTo(String? value) => setField<String>('assigned_to', value);

  DateTime? get assignedAt => getField<DateTime>('assigned_at');
  set assignedAt(DateTime? value) => setField<DateTime>('assigned_at', value);

  DateTime? get completedAt => getField<DateTime>('completed_at');
  set completedAt(DateTime? value) => setField<DateTime>('completed_at', value);

  String? get completedBy => getField<String>('completed_by');
  set completedBy(String? value) => setField<String>('completed_by', value);

  String? get assignedRole => getField<String>('assigned_role');
  set assignedRole(String? value) => setField<String>('assigned_role', value);
}
