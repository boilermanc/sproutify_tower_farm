import '../database.dart';

class TaskHistoryTable extends SupabaseTable<TaskHistoryRow> {
  @override
  String get tableName => 'task_history';

  @override
  TaskHistoryRow createRow(Map<String, dynamic> data) => TaskHistoryRow(data);
}

class TaskHistoryRow extends SupabaseDataRow {
  TaskHistoryRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TaskHistoryTable();

  int get historyId => getField<int>('history_id')!;
  set historyId(int value) => setField<int>('history_id', value);

  int? get taskId => getField<int>('task_id');
  set taskId(int? value) => setField<int>('task_id', value);

  String? get changedBy => getField<String>('changed_by');
  set changedBy(String? value) => setField<String>('changed_by', value);

  String get changeType => getField<String>('change_type')!;
  set changeType(String value) => setField<String>('change_type', value);

  DateTime? get changedAt => getField<DateTime>('changed_at');
  set changedAt(DateTime? value) => setField<DateTime>('changed_at', value);

  String? get fieldName => getField<String>('field_name');
  set fieldName(String? value) => setField<String>('field_name', value);

  String? get oldValue => getField<String>('old_value');
  set oldValue(String? value) => setField<String>('old_value', value);

  String? get newValue => getField<String>('new_value');
  set newValue(String? value) => setField<String>('new_value', value);
}
