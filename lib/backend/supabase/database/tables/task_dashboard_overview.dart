import '../database.dart';

class TaskDashboardOverviewTable
    extends SupabaseTable<TaskDashboardOverviewRow> {
  @override
  String get tableName => 'task_dashboard_overview';

  @override
  TaskDashboardOverviewRow createRow(Map<String, dynamic> data) =>
      TaskDashboardOverviewRow(data);
}

class TaskDashboardOverviewRow extends SupabaseDataRow {
  TaskDashboardOverviewRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TaskDashboardOverviewTable();

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);

  int? get totalTasks => getField<int>('total_tasks');
  set totalTasks(int? value) => setField<int>('total_tasks', value);

  int? get pendingTasks => getField<int>('pending_tasks');
  set pendingTasks(int? value) => setField<int>('pending_tasks', value);

  int? get inProgressTasks => getField<int>('in_progress_tasks');
  set inProgressTasks(int? value) => setField<int>('in_progress_tasks', value);

  int? get completedTasks => getField<int>('completed_tasks');
  set completedTasks(int? value) => setField<int>('completed_tasks', value);

  int? get overdueTasks => getField<int>('overdue_tasks');
  set overdueTasks(int? value) => setField<int>('overdue_tasks', value);

  int? get dueTodayTasks => getField<int>('due_today_tasks');
  set dueTodayTasks(int? value) => setField<int>('due_today_tasks', value);

  int? get upcomingTasks => getField<int>('upcoming_tasks');
  set upcomingTasks(int? value) => setField<int>('upcoming_tasks', value);

  double? get completionRate => getField<double>('completion_rate');
  set completionRate(double? value) =>
      setField<double>('completion_rate', value);

  double? get avgCompletionTimeHours =>
      getField<double>('avg_completion_time_hours');
  set avgCompletionTimeHours(double? value) =>
      setField<double>('avg_completion_time_hours', value);
}
