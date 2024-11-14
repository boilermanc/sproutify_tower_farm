import '../database.dart';

class IpmDashboardMetricsTable extends SupabaseTable<IpmDashboardMetricsRow> {
  @override
  String get tableName => 'ipm_dashboard_metrics';

  @override
  IpmDashboardMetricsRow createRow(Map<String, dynamic> data) =>
      IpmDashboardMetricsRow(data);
}

class IpmDashboardMetricsRow extends SupabaseDataRow {
  IpmDashboardMetricsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => IpmDashboardMetricsTable();

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);

  int? get activeIssuesCount => getField<int>('active_issues_count');
  set activeIssuesCount(int? value) =>
      setField<int>('active_issues_count', value);

  String? get activePests => getField<String>('active_pests');
  set activePests(String? value) => setField<String>('active_pests', value);

  DateTime? get lastTreatmentDate => getField<DateTime>('last_treatment_date');
  set lastTreatmentDate(DateTime? value) =>
      setField<DateTime>('last_treatment_date', value);

  int? get treatmentCount30days => getField<int>('treatment_count_30days');
  set treatmentCount30days(int? value) =>
      setField<int>('treatment_count_30days', value);

  int? get totalObservations => getField<int>('total_observations');
  set totalObservations(int? value) =>
      setField<int>('total_observations', value);

  int? get highSeverityCount => getField<int>('high_severity_count');
  set highSeverityCount(int? value) =>
      setField<int>('high_severity_count', value);

  int? get mediumSeverityCount => getField<int>('medium_severity_count');
  set mediumSeverityCount(int? value) =>
      setField<int>('medium_severity_count', value);

  int? get lowSeverityCount => getField<int>('low_severity_count');
  set lowSeverityCount(int? value) =>
      setField<int>('low_severity_count', value);

  String? get alertLevel => getField<String>('alert_level');
  set alertLevel(String? value) => setField<String>('alert_level', value);

  DateTime? get lastUpdated => getField<DateTime>('last_updated');
  set lastUpdated(DateTime? value) => setField<DateTime>('last_updated', value);
}
