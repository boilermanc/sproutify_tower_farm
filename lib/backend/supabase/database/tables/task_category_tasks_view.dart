import '../database.dart';

class TaskCategoryTasksViewTable
    extends SupabaseTable<TaskCategoryTasksViewRow> {
  @override
  String get tableName => 'task_category_tasks_view';

  @override
  TaskCategoryTasksViewRow createRow(Map<String, dynamic> data) =>
      TaskCategoryTasksViewRow(data);
}

class TaskCategoryTasksViewRow extends SupabaseDataRow {
  TaskCategoryTasksViewRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TaskCategoryTasksViewTable();

  int? get mainCategoryId => getField<int>('main_category_id');
  set mainCategoryId(int? value) => setField<int>('main_category_id', value);

  int? get taskTypeId => getField<int>('task_type_id');
  set taskTypeId(int? value) => setField<int>('task_type_id', value);

  String? get taskName => getField<String>('task_name');
  set taskName(String? value) => setField<String>('task_name', value);

  String? get taskDescription => getField<String>('task_description');
  set taskDescription(String? value) =>
      setField<String>('task_description', value);

  String? get estimatedDuration => getField<String>('estimated_duration');
  set estimatedDuration(String? value) =>
      setField<String>('estimated_duration', value);
}
