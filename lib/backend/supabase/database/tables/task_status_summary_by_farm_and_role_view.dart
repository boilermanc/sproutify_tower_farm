import '../database.dart';

class TaskStatusSummaryByFarmAndRoleViewTable
    extends SupabaseTable<TaskStatusSummaryByFarmAndRoleViewRow> {
  @override
  String get tableName => 'task_status_summary_by_farm_and_role_view';

  @override
  TaskStatusSummaryByFarmAndRoleViewRow createRow(Map<String, dynamic> data) =>
      TaskStatusSummaryByFarmAndRoleViewRow(data);
}

class TaskStatusSummaryByFarmAndRoleViewRow extends SupabaseDataRow {
  TaskStatusSummaryByFarmAndRoleViewRow(Map<String, dynamic> data)
      : super(data);

  @override
  SupabaseTable get table => TaskStatusSummaryByFarmAndRoleViewTable();

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);

  String? get roleId => getField<String>('role_id');
  set roleId(String? value) => setField<String>('role_id', value);

  String? get assignedRole => getField<String>('assigned_role');
  set assignedRole(String? value) => setField<String>('assigned_role', value);

  int? get inProgressCount => getField<int>('in_progress_count');
  set inProgressCount(int? value) => setField<int>('in_progress_count', value);

  int? get pendingCount => getField<int>('pending_count');
  set pendingCount(int? value) => setField<int>('pending_count', value);

  int? get completedCount => getField<int>('completed_count');
  set completedCount(int? value) => setField<int>('completed_count', value);

  int? get overdueCount => getField<int>('overdue_count');
  set overdueCount(int? value) => setField<int>('overdue_count', value);
}
