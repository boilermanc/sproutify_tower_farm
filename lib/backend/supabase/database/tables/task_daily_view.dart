import '../database.dart';

class TaskDailyViewTable extends SupabaseTable<TaskDailyViewRow> {
  @override
  String get tableName => 'task_daily_view';

  @override
  TaskDailyViewRow createRow(Map<String, dynamic> data) =>
      TaskDailyViewRow(data);
}

class TaskDailyViewRow extends SupabaseDataRow {
  TaskDailyViewRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TaskDailyViewTable();

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

  String? get assignedTo => getField<String>('assigned_to');
  set assignedTo(String? value) => setField<String>('assigned_to', value);

  String? get assignedRole => getField<String>('assigned_role');
  set assignedRole(String? value) => setField<String>('assigned_role', value);

  String? get notes => getField<String>('notes');
  set notes(String? value) => setField<String>('notes', value);
}
