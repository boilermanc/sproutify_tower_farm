import '../database.dart';

class VUnifiedWorkflowMonitoringTable
    extends SupabaseTable<VUnifiedWorkflowMonitoringRow> {
  @override
  String get tableName => 'v_unified_workflow_monitoring';

  @override
  VUnifiedWorkflowMonitoringRow createRow(Map<String, dynamic> data) =>
      VUnifiedWorkflowMonitoringRow(data);
}

class VUnifiedWorkflowMonitoringRow extends SupabaseDataRow {
  VUnifiedWorkflowMonitoringRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VUnifiedWorkflowMonitoringTable();

  DateTime? get hour => getField<DateTime>('hour');
  set hour(DateTime? value) => setField<DateTime>('hour', value);

  int? get successfulOperations => getField<int>('successful_operations');
  set successfulOperations(int? value) =>
      setField<int>('successful_operations', value);

  int? get failedOperations => getField<int>('failed_operations');
  set failedOperations(int? value) => setField<int>('failed_operations', value);

  int? get towersAffected => getField<int>('towers_affected');
  set towersAffected(int? value) => setField<int>('towers_affected', value);
}
