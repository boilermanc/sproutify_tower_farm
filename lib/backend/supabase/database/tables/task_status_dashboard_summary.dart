import '../database.dart';

class TaskStatusDashboardSummaryTable
    extends SupabaseTable<TaskStatusDashboardSummaryRow> {
  @override
  String get tableName => 'task_status_dashboard_summary';

  @override
  TaskStatusDashboardSummaryRow createRow(Map<String, dynamic> data) =>
      TaskStatusDashboardSummaryRow(data);
}

class TaskStatusDashboardSummaryRow extends SupabaseDataRow {
  TaskStatusDashboardSummaryRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TaskStatusDashboardSummaryTable();

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);

  double? get totalInProgress => getField<double>('total_in_progress');
  set totalInProgress(double? value) =>
      setField<double>('total_in_progress', value);

  double? get totalPending => getField<double>('total_pending');
  set totalPending(double? value) => setField<double>('total_pending', value);

  double? get totalCompleted => getField<double>('total_completed');
  set totalCompleted(double? value) =>
      setField<double>('total_completed', value);

  double? get totalOverdue => getField<double>('total_overdue');
  set totalOverdue(double? value) => setField<double>('total_overdue', value);
}
