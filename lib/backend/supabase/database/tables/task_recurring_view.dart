import '../database.dart';

class TaskRecurringViewTable extends SupabaseTable<TaskRecurringViewRow> {
  @override
  String get tableName => 'task_recurring_view';

  @override
  TaskRecurringViewRow createRow(Map<String, dynamic> data) =>
      TaskRecurringViewRow(data);
}

class TaskRecurringViewRow extends SupabaseDataRow {
  TaskRecurringViewRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TaskRecurringViewTable();

  String? get recurringId => getField<String>('recurring_id');
  set recurringId(String? value) => setField<String>('recurring_id', value);

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);

  String? get taskName => getField<String>('task_name');
  set taskName(String? value) => setField<String>('task_name', value);

  String? get scope => getField<String>('scope');
  set scope(String? value) => setField<String>('scope', value);

  String? get recurrencePattern => getField<String>('recurrence_pattern');
  set recurrencePattern(String? value) =>
      setField<String>('recurrence_pattern', value);

  int? get recurrenceInterval => getField<int>('recurrence_interval');
  set recurrenceInterval(int? value) =>
      setField<int>('recurrence_interval', value);

  String? get recurrenceDays => getField<String>('recurrence_days');
  set recurrenceDays(String? value) =>
      setField<String>('recurrence_days', value);

  int? get recurrenceDayOfMonth => getField<int>('recurrence_day_of_month');
  set recurrenceDayOfMonth(int? value) =>
      setField<int>('recurrence_day_of_month', value);

  PostgresTime? get dueTime => getField<PostgresTime>('due_time');
  set dueTime(PostgresTime? value) => setField<PostgresTime>('due_time', value);

  DateTime? get startDate => getField<DateTime>('start_date');
  set startDate(DateTime? value) => setField<DateTime>('start_date', value);

  DateTime? get endDate => getField<DateTime>('end_date');
  set endDate(DateTime? value) => setField<DateTime>('end_date', value);

  String? get assignmentType => getField<String>('assignment_type');
  set assignmentType(String? value) =>
      setField<String>('assignment_type', value);

  String? get assignedToName => getField<String>('assigned_to_name');
  set assignedToName(String? value) =>
      setField<String>('assigned_to_name', value);

  String? get assignedRoleName => getField<String>('assigned_role_name');
  set assignedRoleName(String? value) =>
      setField<String>('assigned_role_name', value);

  String? get defaultNotes => getField<String>('default_notes');
  set defaultNotes(String? value) => setField<String>('default_notes', value);

  bool? get isActive => getField<bool>('is_active');
  set isActive(bool? value) => setField<bool>('is_active', value);

  DateTime? get nextDueDate => getField<DateTime>('next_due_date');
  set nextDueDate(DateTime? value) =>
      setField<DateTime>('next_due_date', value);

  DateTime? get lastGeneratedAt => getField<DateTime>('last_generated_at');
  set lastGeneratedAt(DateTime? value) =>
      setField<DateTime>('last_generated_at', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  int? get generatedTaskCount => getField<int>('generated_task_count');
  set generatedTaskCount(int? value) =>
      setField<int>('generated_task_count', value);

  String? get generationStatus => getField<String>('generation_status');
  set generationStatus(String? value) =>
      setField<String>('generation_status', value);

  String? get statusBgColor => getField<String>('status_bg_color');
  set statusBgColor(String? value) =>
      setField<String>('status_bg_color', value);

  String? get statusTextColor => getField<String>('status_text_color');
  set statusTextColor(String? value) =>
      setField<String>('status_text_color', value);
}
