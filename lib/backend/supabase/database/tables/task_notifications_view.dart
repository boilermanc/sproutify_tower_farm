import '../database.dart';

class TaskNotificationsViewTable
    extends SupabaseTable<TaskNotificationsViewRow> {
  @override
  String get tableName => 'task_notifications_view';

  @override
  TaskNotificationsViewRow createRow(Map<String, dynamic> data) =>
      TaskNotificationsViewRow(data);
}

class TaskNotificationsViewRow extends SupabaseDataRow {
  TaskNotificationsViewRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TaskNotificationsViewTable();

  int? get taskId => getField<int>('task_id');
  set taskId(int? value) => setField<int>('task_id', value);

  String? get taskType => getField<String>('task_type');
  set taskType(String? value) => setField<String>('task_type', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  DateTime? get dueDate => getField<DateTime>('due_date');
  set dueDate(DateTime? value) => setField<DateTime>('due_date', value);

  String? get alertType => getField<String>('alert_type');
  set alertType(String? value) => setField<String>('alert_type', value);

  String? get assignedTo => getField<String>('assigned_to');
  set assignedTo(String? value) => setField<String>('assigned_to', value);

  String? get assignedRole => getField<String>('assigned_role');
  set assignedRole(String? value) => setField<String>('assigned_role', value);

  String? get notes => getField<String>('notes');
  set notes(String? value) => setField<String>('notes', value);
}
