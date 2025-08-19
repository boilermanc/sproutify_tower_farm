import '../database.dart';

class IpdmScheduleTable extends SupabaseTable<IpdmScheduleRow> {
  @override
  String get tableName => 'ipdm_schedule';

  @override
  IpdmScheduleRow createRow(Map<String, dynamic> data) => IpdmScheduleRow(data);
}

class IpdmScheduleRow extends SupabaseDataRow {
  IpdmScheduleRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => IpdmScheduleTable();

  int? get taskId => getField<int>('task_id');
  set taskId(int? value) => setField<int>('task_id', value);

  DateTime? get dueDate => getField<DateTime>('due_date');
  set dueDate(DateTime? value) => setField<DateTime>('due_date', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  String? get assignedTo => getField<String>('assigned_to');
  set assignedTo(String? value) => setField<String>('assigned_to', value);

  String? get notes => getField<String>('notes');
  set notes(String? value) => setField<String>('notes', value);

  int? get towerId => getField<int>('tower_id');
  set towerId(int? value) => setField<int>('tower_id', value);

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get assignedAt => getField<DateTime>('assigned_at');
  set assignedAt(DateTime? value) => setField<DateTime>('assigned_at', value);

  DateTime? get completedAt => getField<DateTime>('completed_at');
  set completedAt(DateTime? value) => setField<DateTime>('completed_at', value);

  String? get completedBy => getField<String>('completed_by');
  set completedBy(String? value) => setField<String>('completed_by', value);

  String? get recurringTaskId => getField<String>('recurring_task_id');
  set recurringTaskId(String? value) =>
      setField<String>('recurring_task_id', value);

  String? get taskName => getField<String>('task_name');
  set taskName(String? value) => setField<String>('task_name', value);

  String? get taskDescription => getField<String>('task_description');
  set taskDescription(String? value) =>
      setField<String>('task_description', value);

  int? get priorityLevel => getField<int>('priority_level');
  set priorityLevel(int? value) => setField<int>('priority_level', value);

  String? get estimatedDuration => getField<String>('estimated_duration');
  set estimatedDuration(String? value) =>
      setField<String>('estimated_duration', value);

  String? get farmName => getField<String>('farm_name');
  set farmName(String? value) => setField<String>('farm_name', value);

  String? get assignedName => getField<String>('assigned_name');
  set assignedName(String? value) => setField<String>('assigned_name', value);

  String? get completedByName => getField<String>('completed_by_name');
  set completedByName(String? value) =>
      setField<String>('completed_by_name', value);

  String? get urgencyStatus => getField<String>('urgency_status');
  set urgencyStatus(String? value) => setField<String>('urgency_status', value);

  double? get daysUntilDue => getField<double>('days_until_due');
  set daysUntilDue(double? value) => setField<double>('days_until_due', value);

  String? get daysDisplay => getField<String>('days_display');
  set daysDisplay(String? value) => setField<String>('days_display', value);

  String? get activityType => getField<String>('activity_type');
  set activityType(String? value) => setField<String>('activity_type', value);

  String? get location => getField<String>('location');
  set location(String? value) => setField<String>('location', value);

  String? get activityTextColor => getField<String>('activity_text_color');
  set activityTextColor(String? value) =>
      setField<String>('activity_text_color', value);

  String? get activityBgColor => getField<String>('activity_bg_color');
  set activityBgColor(String? value) =>
      setField<String>('activity_bg_color', value);

  String? get statusTextColor => getField<String>('status_text_color');
  set statusTextColor(String? value) =>
      setField<String>('status_text_color', value);

  String? get statusBgColor => getField<String>('status_bg_color');
  set statusBgColor(String? value) =>
      setField<String>('status_bg_color', value);

  String? get priorityTextColor => getField<String>('priority_text_color');
  set priorityTextColor(String? value) =>
      setField<String>('priority_text_color', value);

  String? get priorityBgColor => getField<String>('priority_bg_color');
  set priorityBgColor(String? value) =>
      setField<String>('priority_bg_color', value);

  String? get priorityLabel => getField<String>('priority_label');
  set priorityLabel(String? value) => setField<String>('priority_label', value);

  String? get activityLabel => getField<String>('activity_label');
  set activityLabel(String? value) => setField<String>('activity_label', value);

  String? get isRecurring => getField<String>('is_recurring');
  set isRecurring(String? value) => setField<String>('is_recurring', value);
}
