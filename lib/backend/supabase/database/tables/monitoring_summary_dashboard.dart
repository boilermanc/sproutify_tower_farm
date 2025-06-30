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

  int? get ecIssueCount => getField<int>('ec_issue_count');
  set ecIssueCount(int? value) => setField<int>('ec_issue_count', value);

  int? get phIssueCount => getField<int>('ph_issue_count');
  set phIssueCount(int? value) => setField<int>('ph_issue_count', value);

  int? get noIssueCount => getField<int>('no_issue_count');
  set noIssueCount(int? value) => setField<int>('no_issue_count', value);

  DateTime? get nextCalibrationDue =>
      getField<DateTime>('next_calibration_due');
  set nextCalibrationDue(DateTime? value) =>
      setField<DateTime>('next_calibration_due', value);

  DateTime? get lastCalibrationTest =>
      getField<DateTime>('last_calibration_test');
  set lastCalibrationTest(DateTime? value) =>
      setField<DateTime>('last_calibration_test', value);
}
