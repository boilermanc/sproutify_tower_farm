import '../database.dart';

class MonitoringTopDashboardTable
    extends SupabaseTable<MonitoringTopDashboardRow> {
  @override
  String get tableName => 'monitoring_top_dashboard';

  @override
  MonitoringTopDashboardRow createRow(Map<String, dynamic> data) =>
      MonitoringTopDashboardRow(data);
}

class MonitoringTopDashboardRow extends SupabaseDataRow {
  MonitoringTopDashboardRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => MonitoringTopDashboardTable();

  int? get totalEcIssues => getField<int>('total_ec_issues');
  set totalEcIssues(int? value) => setField<int>('total_ec_issues', value);

  int? get criticalEcCount => getField<int>('critical_ec_count');
  set criticalEcCount(int? value) => setField<int>('critical_ec_count', value);

  int? get warningEcCount => getField<int>('warning_ec_count');
  set warningEcCount(int? value) => setField<int>('warning_ec_count', value);

  int? get totalPhIssues => getField<int>('total_ph_issues');
  set totalPhIssues(int? value) => setField<int>('total_ph_issues', value);

  int? get towersWithNoIssues => getField<int>('towers_with_no_issues');
  set towersWithNoIssues(int? value) =>
      setField<int>('towers_with_no_issues', value);
}
