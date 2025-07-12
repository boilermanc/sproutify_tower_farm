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

  int? get taskTypeId => getField<int>('task_type_id');
  set taskTypeId(int? value) => setField<int>('task_type_id', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  DateTime? get dueDate => getField<DateTime>('due_date');
  set dueDate(DateTime? value) => setField<DateTime>('due_date', value);

  DateTime? get assignedAt => getField<DateTime>('assigned_at');
  set assignedAt(DateTime? value) => setField<DateTime>('assigned_at', value);

  String? get assignedTo => getField<String>('assigned_to');
  set assignedTo(String? value) => setField<String>('assigned_to', value);

  String? get assignedRole => getField<String>('assigned_role');
  set assignedRole(String? value) => setField<String>('assigned_role', value);

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

  String? get urgencyLevel => getField<String>('urgency_level');
  set urgencyLevel(String? value) => setField<String>('urgency_level', value);

  String? get stickyTaskId => getField<String>('sticky_task_id');
  set stickyTaskId(String? value) => setField<String>('sticky_task_id', value);

  String? get cardId => getField<String>('card_id');
  set cardId(String? value) => setField<String>('card_id', value);

  String? get photoUrl => getField<String>('photo_url');
  set photoUrl(String? value) => setField<String>('photo_url', value);

  String? get actionType => getField<String>('action_type');
  set actionType(String? value) => setField<String>('action_type', value);

  String? get recurringTaskId => getField<String>('recurring_task_id');
  set recurringTaskId(String? value) =>
      setField<String>('recurring_task_id', value);

  bool? get isRecurring => getField<bool>('is_recurring');
  set isRecurring(bool? value) => setField<bool>('is_recurring', value);

  String? get recurrencePattern => getField<String>('recurrence_pattern');
  set recurrencePattern(String? value) =>
      setField<String>('recurrence_pattern', value);
}
