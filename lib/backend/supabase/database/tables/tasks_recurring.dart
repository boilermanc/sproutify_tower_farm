import '../database.dart';

class TasksRecurringTable extends SupabaseTable<TasksRecurringRow> {
  @override
  String get tableName => 'tasks_recurring';

  @override
  TasksRecurringRow createRow(Map<String, dynamic> data) =>
      TasksRecurringRow(data);
}

class TasksRecurringRow extends SupabaseDataRow {
  TasksRecurringRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TasksRecurringTable();

  String get recurringId => getField<String>('recurring_id')!;
  set recurringId(String value) => setField<String>('recurring_id', value);

  String get farmId => getField<String>('farm_id')!;
  set farmId(String value) => setField<String>('farm_id', value);

  int get taskTypeId => getField<int>('task_type_id')!;
  set taskTypeId(int value) => setField<int>('task_type_id', value);

  String get recurrencePattern => getField<String>('recurrence_pattern')!;
  set recurrencePattern(String value) =>
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

  DateTime get startDate => getField<DateTime>('start_date')!;
  set startDate(DateTime value) => setField<DateTime>('start_date', value);

  DateTime? get endDate => getField<DateTime>('end_date');
  set endDate(DateTime? value) => setField<DateTime>('end_date', value);

  String get assignmentType => getField<String>('assignment_type')!;
  set assignmentType(String value) =>
      setField<String>('assignment_type', value);

  String? get assignedTo => getField<String>('assigned_to');
  set assignedTo(String? value) => setField<String>('assigned_to', value);

  String? get assignedRoleId => getField<String>('assigned_role_id');
  set assignedRoleId(String? value) =>
      setField<String>('assigned_role_id', value);

  int? get towerId => getField<int>('tower_id');
  set towerId(int? value) => setField<int>('tower_id', value);

  String? get towerSelectionType => getField<String>('tower_selection_type');
  set towerSelectionType(String? value) =>
      setField<String>('tower_selection_type', value);

  String? get towerFilter => getField<String>('tower_filter');
  set towerFilter(String? value) => setField<String>('tower_filter', value);

  String? get defaultNotes => getField<String>('default_notes');
  set defaultNotes(String? value) => setField<String>('default_notes', value);

  int? get defaultPriorityLevel => getField<int>('default_priority_level');
  set defaultPriorityLevel(int? value) =>
      setField<int>('default_priority_level', value);

  bool? get isActive => getField<bool>('is_active');
  set isActive(bool? value) => setField<bool>('is_active', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  String? get createdBy => getField<String>('created_by');
  set createdBy(String? value) => setField<String>('created_by', value);

  DateTime? get lastGeneratedAt => getField<DateTime>('last_generated_at');
  set lastGeneratedAt(DateTime? value) =>
      setField<DateTime>('last_generated_at', value);

  DateTime? get nextDueDate => getField<DateTime>('next_due_date');
  set nextDueDate(DateTime? value) =>
      setField<DateTime>('next_due_date', value);
}
