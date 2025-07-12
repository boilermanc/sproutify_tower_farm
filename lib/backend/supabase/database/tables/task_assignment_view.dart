import '../database.dart';

class TaskAssignmentViewTable extends SupabaseTable<TaskAssignmentViewRow> {
  @override
  String get tableName => 'task_assignment_view';

  @override
  TaskAssignmentViewRow createRow(Map<String, dynamic> data) =>
      TaskAssignmentViewRow(data);
}

class TaskAssignmentViewRow extends SupabaseDataRow {
  TaskAssignmentViewRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TaskAssignmentViewTable();

  int? get taskId => getField<int>('task_id');
  set taskId(int? value) => setField<int>('task_id', value);

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);

  String? get taskType => getField<String>('task_type');
  set taskType(String? value) => setField<String>('task_type', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  DateTime? get dueDate => getField<DateTime>('due_date');
  set dueDate(DateTime? value) => setField<DateTime>('due_date', value);

  DateTime? get assignedAt => getField<DateTime>('assigned_at');
  set assignedAt(DateTime? value) => setField<DateTime>('assigned_at', value);

  String? get assignedTo => getField<String>('assigned_to');
  set assignedTo(String? value) => setField<String>('assigned_to', value);

  String? get assignedToName => getField<String>('assigned_to_name');
  set assignedToName(String? value) =>
      setField<String>('assigned_to_name', value);

  String? get assignedRole => getField<String>('assigned_role');
  set assignedRole(String? value) => setField<String>('assigned_role', value);

  String? get assignedRoleName => getField<String>('assigned_role_name');
  set assignedRoleName(String? value) =>
      setField<String>('assigned_role_name', value);

  String? get notes => getField<String>('notes');
  set notes(String? value) => setField<String>('notes', value);

  String? get colorCode => getField<String>('color_code');
  set colorCode(String? value) => setField<String>('color_code', value);

  String? get bgColorCode => getField<String>('bg_color_code');
  set bgColorCode(String? value) => setField<String>('bg_color_code', value);

  int? get towerId => getField<int>('tower_id');
  set towerId(int? value) => setField<int>('tower_id', value);

  String? get towerIdentifier => getField<String>('tower_identifier');
  set towerIdentifier(String? value) =>
      setField<String>('tower_identifier', value);

  String? get recurringTaskId => getField<String>('recurring_task_id');
  set recurringTaskId(String? value) =>
      setField<String>('recurring_task_id', value);

  bool? get isRecurring => getField<bool>('is_recurring');
  set isRecurring(bool? value) => setField<bool>('is_recurring', value);

  String? get recurrencePattern => getField<String>('recurrence_pattern');
  set recurrencePattern(String? value) =>
      setField<String>('recurrence_pattern', value);

  int? get recurrenceInterval => getField<int>('recurrence_interval');
  set recurrenceInterval(int? value) =>
      setField<int>('recurrence_interval', value);

  String? get recurrenceDays => getField<String>('recurrence_days');
  set recurrenceDays(String? value) =>
      setField<String>('recurrence_days', value);
}
