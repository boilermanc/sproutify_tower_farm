import '../database.dart';

class TaskHistoryViewTable extends SupabaseTable<TaskHistoryViewRow> {
  @override
  String get tableName => 'task_history_view';

  @override
  TaskHistoryViewRow createRow(Map<String, dynamic> data) =>
      TaskHistoryViewRow(data);
}

class TaskHistoryViewRow extends SupabaseDataRow {
  TaskHistoryViewRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TaskHistoryViewTable();

  int? get historyId => getField<int>('history_id');
  set historyId(int? value) => setField<int>('history_id', value);

  int? get taskId => getField<int>('task_id');
  set taskId(int? value) => setField<int>('task_id', value);

  String? get taskName => getField<String>('task_name');
  set taskName(String? value) => setField<String>('task_name', value);

  DateTime? get changedAt => getField<DateTime>('changed_at');
  set changedAt(DateTime? value) => setField<DateTime>('changed_at', value);

  String? get fieldName => getField<String>('field_name');
  set fieldName(String? value) => setField<String>('field_name', value);

  String? get oldValue => getField<String>('old_value');
  set oldValue(String? value) => setField<String>('old_value', value);

  String? get newValue => getField<String>('new_value');
  set newValue(String? value) => setField<String>('new_value', value);

  String? get changedByUser => getField<String>('changed_by_user');
  set changedByUser(String? value) =>
      setField<String>('changed_by_user', value);

  String? get displayType => getField<String>('display_type');
  set displayType(String? value) => setField<String>('display_type', value);

  String? get displayDescription => getField<String>('display_description');
  set displayDescription(String? value) =>
      setField<String>('display_description', value);

  String? get displayColor => getField<String>('display_color');
  set displayColor(String? value) => setField<String>('display_color', value);
}
