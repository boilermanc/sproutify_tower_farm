import '../database.dart';

class FarmDashboardViewTable extends SupabaseTable<FarmDashboardViewRow> {
  @override
  String get tableName => 'farm_dashboard_view';

  @override
  FarmDashboardViewRow createRow(Map<String, dynamic> data) =>
      FarmDashboardViewRow(data);
}

class FarmDashboardViewRow extends SupabaseDataRow {
  FarmDashboardViewRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => FarmDashboardViewTable();

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);

  String? get farmName => getField<String>('farm_name');
  set farmName(String? value) => setField<String>('farm_name', value);

  int? get totalTowers => getField<int>('total_towers');
  set totalTowers(int? value) => setField<int>('total_towers', value);

  int? get activeTowers => getField<int>('active_towers');
  set activeTowers(int? value) => setField<int>('active_towers', value);

  int? get availableTowers => getField<int>('available_towers');
  set availableTowers(int? value) => setField<int>('available_towers', value);

  int? get fullTowers => getField<int>('full_towers');
  set fullTowers(int? value) => setField<int>('full_towers', value);

  int? get partialTowers => getField<int>('partial_towers');
  set partialTowers(int? value) => setField<int>('partial_towers', value);

  String? get towersStatusDisplay => getField<String>('towers_status_display');
  set towersStatusDisplay(String? value) =>
      setField<String>('towers_status_display', value);

  double? get towerUtilizationPercent =>
      getField<double>('tower_utilization_percent');
  set towerUtilizationPercent(double? value) =>
      setField<double>('tower_utilization_percent', value);

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

  int? get currentActiveTasks => getField<int>('current_active_tasks');
  set currentActiveTasks(int? value) =>
      setField<int>('current_active_tasks', value);
}
