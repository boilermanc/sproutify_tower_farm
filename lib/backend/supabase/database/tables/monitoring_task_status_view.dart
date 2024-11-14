import '../database.dart';

class MonitoringTaskStatusViewTable
    extends SupabaseTable<MonitoringTaskStatusViewRow> {
  @override
  String get tableName => 'monitoring_task_status_view';

  @override
  MonitoringTaskStatusViewRow createRow(Map<String, dynamic> data) =>
      MonitoringTaskStatusViewRow(data);
}

class MonitoringTaskStatusViewRow extends SupabaseDataRow {
  MonitoringTaskStatusViewRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => MonitoringTaskStatusViewTable();

  int? get taskId => getField<int>('task_id');
  set taskId(int? value) => setField<int>('task_id', value);

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);

  int? get towerId => getField<int>('tower_id');
  set towerId(int? value) => setField<int>('tower_id', value);

  String? get towerIdentifier => getField<String>('tower_identifier');
  set towerIdentifier(String? value) =>
      setField<String>('tower_identifier', value);

  String? get taskName => getField<String>('task_name');
  set taskName(String? value) => setField<String>('task_name', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get dueDate => getField<DateTime>('due_date');
  set dueDate(DateTime? value) => setField<DateTime>('due_date', value);

  String? get phColor => getField<String>('ph_color');
  set phColor(String? value) => setField<String>('ph_color', value);

  String? get ecStatus => getField<String>('ec_status');
  set ecStatus(String? value) => setField<String>('ec_status', value);

  String? get lastReadHumanReadable =>
      getField<String>('last_read_human_readable');
  set lastReadHumanReadable(String? value) =>
      setField<String>('last_read_human_readable', value);

  String? get issues => getField<String>('issues');
  set issues(String? value) => setField<String>('issues', value);

  String? get assignedToName => getField<String>('assigned_to_name');
  set assignedToName(String? value) =>
      setField<String>('assigned_to_name', value);

  String? get issueColorHex => getField<String>('issue_color_hex');
  set issueColorHex(String? value) =>
      setField<String>('issue_color_hex', value);

  bool? get isOverdue => getField<bool>('is_overdue');
  set isOverdue(bool? value) => setField<bool>('is_overdue', value);

  String? get farmName => getField<String>('farm_name');
  set farmName(String? value) => setField<String>('farm_name', value);

  String? get assignedRole => getField<String>('assigned_role');
  set assignedRole(String? value) => setField<String>('assigned_role', value);
}
