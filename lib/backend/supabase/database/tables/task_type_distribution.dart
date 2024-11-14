import '../database.dart';

class TaskTypeDistributionTable extends SupabaseTable<TaskTypeDistributionRow> {
  @override
  String get tableName => 'task_type_distribution';

  @override
  TaskTypeDistributionRow createRow(Map<String, dynamic> data) =>
      TaskTypeDistributionRow(data);
}

class TaskTypeDistributionRow extends SupabaseDataRow {
  TaskTypeDistributionRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TaskTypeDistributionTable();

  int? get taskTypeId => getField<int>('task_type_id');
  set taskTypeId(int? value) => setField<int>('task_type_id', value);

  int? get taskCount => getField<int>('task_count');
  set taskCount(int? value) => setField<int>('task_count', value);
}
