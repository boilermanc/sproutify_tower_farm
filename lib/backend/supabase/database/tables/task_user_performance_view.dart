import '../database.dart';

class TaskUserPerformanceViewTable
    extends SupabaseTable<TaskUserPerformanceViewRow> {
  @override
  String get tableName => 'task_user_performance_view';

  @override
  TaskUserPerformanceViewRow createRow(Map<String, dynamic> data) =>
      TaskUserPerformanceViewRow(data);
}

class TaskUserPerformanceViewRow extends SupabaseDataRow {
  TaskUserPerformanceViewRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TaskUserPerformanceViewTable();

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get userName => getField<String>('user_name');
  set userName(String? value) => setField<String>('user_name', value);

  int? get totalTasksAssigned => getField<int>('total_tasks_assigned');
  set totalTasksAssigned(int? value) =>
      setField<int>('total_tasks_assigned', value);

  int? get tasksCompleted => getField<int>('tasks_completed');
  set tasksCompleted(int? value) => setField<int>('tasks_completed', value);

  double? get avgCompletionTimeHours =>
      getField<double>('avg_completion_time_hours');
  set avgCompletionTimeHours(double? value) =>
      setField<double>('avg_completion_time_hours', value);
}
