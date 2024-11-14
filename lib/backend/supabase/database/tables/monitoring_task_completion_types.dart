import '../database.dart';

class MonitoringTaskCompletionTypesTable
    extends SupabaseTable<MonitoringTaskCompletionTypesRow> {
  @override
  String get tableName => 'monitoring_task_completion_types';

  @override
  MonitoringTaskCompletionTypesRow createRow(Map<String, dynamic> data) =>
      MonitoringTaskCompletionTypesRow(data);
}

class MonitoringTaskCompletionTypesRow extends SupabaseDataRow {
  MonitoringTaskCompletionTypesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => MonitoringTaskCompletionTypesTable();

  int get completionTypeId => getField<int>('completion_type_id')!;
  set completionTypeId(int value) => setField<int>('completion_type_id', value);

  String get completionName => getField<String>('completion_name')!;
  set completionName(String value) =>
      setField<String>('completion_name', value);

  bool? get createsFollowup => getField<bool>('creates_followup');
  set createsFollowup(bool? value) => setField<bool>('creates_followup', value);

  int? get followupDelayHours => getField<int>('followup_delay_hours');
  set followupDelayHours(int? value) =>
      setField<int>('followup_delay_hours', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  bool? get isActive => getField<bool>('is_active');
  set isActive(bool? value) => setField<bool>('is_active', value);
}
