import '../database.dart';

class TaskUserTaskListViewTable extends SupabaseTable<TaskUserTaskListViewRow> {
  @override
  String get tableName => 'task_user_task_list_view';

  @override
  TaskUserTaskListViewRow createRow(Map<String, dynamic> data) =>
      TaskUserTaskListViewRow(data);
}

class TaskUserTaskListViewRow extends SupabaseDataRow {
  TaskUserTaskListViewRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TaskUserTaskListViewTable();

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

  String? get assignedUsers => getField<String>('assigned_users');
  set assignedUsers(String? value) => setField<String>('assigned_users', value);

  String? get assignedRole => getField<String>('assigned_role');
  set assignedRole(String? value) => setField<String>('assigned_role', value);

  String? get roleId => getField<String>('role_id');
  set roleId(String? value) => setField<String>('role_id', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  DateTime? get completedAt => getField<DateTime>('completed_at');
  set completedAt(DateTime? value) => setField<DateTime>('completed_at', value);

  String? get notes => getField<String>('notes');
  set notes(String? value) => setField<String>('notes', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  String? get displayColor => getField<String>('display_color');
  set displayColor(String? value) => setField<String>('display_color', value);
}
