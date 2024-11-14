import '../database.dart';

class IpmDashboardMetricsTestTable
    extends SupabaseTable<IpmDashboardMetricsTestRow> {
  @override
  String get tableName => 'ipm_dashboard_metrics_test';

  @override
  IpmDashboardMetricsTestRow createRow(Map<String, dynamic> data) =>
      IpmDashboardMetricsTestRow(data);
}

class IpmDashboardMetricsTestRow extends SupabaseDataRow {
  IpmDashboardMetricsTestRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => IpmDashboardMetricsTestTable();

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);

  int? get activeIssuesCount => getField<int>('active_issues_count');
  set activeIssuesCount(int? value) =>
      setField<int>('active_issues_count', value);

  String? get activePests => getField<String>('active_pests');
  set activePests(String? value) => setField<String>('active_pests', value);

  dynamic? get activePestDetails => getField<dynamic>('active_pest_details');
  set activePestDetails(dynamic? value) =>
      setField<dynamic>('active_pest_details', value);

  DateTime? get lastTreatmentDate => getField<DateTime>('last_treatment_date');
  set lastTreatmentDate(DateTime? value) =>
      setField<DateTime>('last_treatment_date', value);

  int? get treatmentCount30days => getField<int>('treatment_count_30days');
  set treatmentCount30days(int? value) =>
      setField<int>('treatment_count_30days', value);

  dynamic? get recentTreatmentMethods =>
      getField<dynamic>('recent_treatment_methods');
  set recentTreatmentMethods(dynamic? value) =>
      setField<dynamic>('recent_treatment_methods', value);

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
