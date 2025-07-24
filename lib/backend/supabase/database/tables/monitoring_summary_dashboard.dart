import '../database.dart';

class MonitoringSummaryDashboardTable
    extends SupabaseTable<MonitoringSummaryDashboardRow> {
  @override
  String get tableName => 'monitoring_summary_dashboard';

  @override
  MonitoringSummaryDashboardRow createRow(Map<String, dynamic> data) =>
      MonitoringSummaryDashboardRow(data);
}

class MonitoringSummaryDashboardRow extends SupabaseDataRow {
  MonitoringSummaryDashboardRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => MonitoringSummaryDashboardTable();

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);

  int? get ecIssues => getField<int>('ec_issues');
  set ecIssues(int? value) => setField<int>('ec_issues', value);

  int? get phIssues => getField<int>('ph_issues');
  set phIssues(int? value) => setField<int>('ph_issues', value);

  int? get noIssues => getField<int>('no_issues');
  set noIssues(int? value) => setField<int>('no_issues', value);
}
