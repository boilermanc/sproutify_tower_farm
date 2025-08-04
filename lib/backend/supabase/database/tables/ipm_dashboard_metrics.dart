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

  DateTime? get latestApplicationDate =>
      getField<DateTime>('latest_application_date');
  set latestApplicationDate(DateTime? value) =>
      setField<DateTime>('latest_application_date', value);

  String? get appliedChemicals => getField<String>('applied_chemicals');
  set appliedChemicals(String? value) =>
      setField<String>('applied_chemicals', value);

  String? get treatmentArea => getField<String>('treatment_area');
  set treatmentArea(String? value) => setField<String>('treatment_area', value);

  String? get alertLevel => getField<String>('alert_level');
  set alertLevel(String? value) => setField<String>('alert_level', value);

  DateTime? get lastUpdated => getField<DateTime>('last_updated');
  set lastUpdated(DateTime? value) => setField<DateTime>('last_updated', value);

  String? get daysSinceTreatment => getField<String>('days_since_treatment');
  set daysSinceTreatment(String? value) =>
      setField<String>('days_since_treatment', value);

  String? get formattedTreatmentDate =>
      getField<String>('formatted_treatment_date');
  set formattedTreatmentDate(String? value) =>
      setField<String>('formatted_treatment_date', value);
}
