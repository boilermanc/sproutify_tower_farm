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

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);

  String? get taskName => getField<String>('task_name');
  set taskName(String? value) => setField<String>('task_name', value);

  int? get taskCount => getField<int>('task_count');
  set taskCount(int? value) => setField<int>('task_count', value);

  int? get activeCount => getField<int>('active_count');
  set activeCount(int? value) => setField<int>('active_count', value);

  int? get overdueCount => getField<int>('overdue_count');
  set overdueCount(int? value) => setField<int>('overdue_count', value);
}
