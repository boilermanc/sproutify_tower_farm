import '../database.dart';

class PendingStickyCardTasksTable
    extends SupabaseTable<PendingStickyCardTasksRow> {
  @override
  String get tableName => 'pending_sticky_card_tasks';

  @override
  PendingStickyCardTasksRow createRow(Map<String, dynamic> data) =>
      PendingStickyCardTasksRow(data);
}

class PendingStickyCardTasksRow extends SupabaseDataRow {
  PendingStickyCardTasksRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PendingStickyCardTasksTable();

  int? get taskId => getField<int>('task_id');
  set taskId(int? value) => setField<int>('task_id', value);

  int? get taskTypeId => getField<int>('task_type_id');
  set taskTypeId(int? value) => setField<int>('task_type_id', value);

  String? get taskName => getField<String>('task_name');
  set taskName(String? value) => setField<String>('task_name', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  DateTime? get dueDate => getField<DateTime>('due_date');
  set dueDate(DateTime? value) => setField<DateTime>('due_date', value);

  String? get assignedTo => getField<String>('assigned_to');
  set assignedTo(String? value) => setField<String>('assigned_to', value);

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);

  String? get cardId => getField<String>('card_id');
  set cardId(String? value) => setField<String>('card_id', value);

  String? get locationCode => getField<String>('location_code');
  set locationCode(String? value) => setField<String>('location_code', value);

  String? get locationName => getField<String>('location_name');
  set locationName(String? value) => setField<String>('location_name', value);

  String? get cardType => getField<String>('card_type');
  set cardType(String? value) => setField<String>('card_type', value);

  String? get stickyTaskType => getField<String>('sticky_task_type');
  set stickyTaskType(String? value) =>
      setField<String>('sticky_task_type', value);

  String? get urgencyStatus => getField<String>('urgency_status');
  set urgencyStatus(String? value) => setField<String>('urgency_status', value);
}
