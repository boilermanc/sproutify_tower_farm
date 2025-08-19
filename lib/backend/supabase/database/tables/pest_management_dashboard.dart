import '../database.dart';

class PestManagementDashboardTable
    extends SupabaseTable<PestManagementDashboardRow> {
  @override
  String get tableName => 'pest_management_dashboard';

  @override
  PestManagementDashboardRow createRow(Map<String, dynamic> data) =>
      PestManagementDashboardRow(data);
}

class PestManagementDashboardRow extends SupabaseDataRow {
  PestManagementDashboardRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PestManagementDashboardTable();

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);

  int? get activePestCount => getField<int>('active_pest_count');
  set activePestCount(int? value) => setField<int>('active_pest_count', value);

  int? get activeDiseaseCount => getField<int>('active_disease_count');
  set activeDiseaseCount(int? value) =>
      setField<int>('active_disease_count', value);

  int? get totalActiveIssues => getField<int>('total_active_issues');
  set totalActiveIssues(int? value) =>
      setField<int>('total_active_issues', value);

  String? get pestStatus => getField<String>('pest_status');
  set pestStatus(String? value) => setField<String>('pest_status', value);

  String? get diseaseStatus => getField<String>('disease_status');
  set diseaseStatus(String? value) => setField<String>('disease_status', value);

  String? get overallStatus => getField<String>('overall_status');
  set overallStatus(String? value) => setField<String>('overall_status', value);

  DateTime? get lastActualTreatmentDate =>
      getField<DateTime>('last_actual_treatment_date');
  set lastActualTreatmentDate(DateTime? value) =>
      setField<DateTime>('last_actual_treatment_date', value);

  String? get lastProductUsed => getField<String>('last_product_used');
  set lastProductUsed(String? value) =>
      setField<String>('last_product_used', value);

  String? get lastMethodUsed => getField<String>('last_method_used');
  set lastMethodUsed(String? value) =>
      setField<String>('last_method_used', value);

  int? get chemicalsUsedInTreatment =>
      getField<int>('chemicals_used_in_treatment');
  set chemicalsUsedInTreatment(int? value) =>
      setField<int>('chemicals_used_in_treatment', value);

  int? get daysSinceLastActualTreatment =>
      getField<int>('days_since_last_actual_treatment');
  set daysSinceLastActualTreatment(int? value) =>
      setField<int>('days_since_last_actual_treatment', value);

  String? get lastActualTreatmentDisplay =>
      getField<String>('last_actual_treatment_display');
  set lastActualTreatmentDisplay(String? value) =>
      setField<String>('last_actual_treatment_display', value);

  int? get actualApplicationsLast30Days =>
      getField<int>('actual_applications_last_30_days');
  set actualApplicationsLast30Days(int? value) =>
      setField<int>('actual_applications_last_30_days', value);

  int? get uniqueChemicalsLast30Days =>
      getField<int>('unique_chemicals_last_30_days');
  set uniqueChemicalsLast30Days(int? value) =>
      setField<int>('unique_chemicals_last_30_days', value);

  int? get treatmentDaysLast30Days =>
      getField<int>('treatment_days_last_30_days');
  set treatmentDaysLast30Days(int? value) =>
      setField<int>('treatment_days_last_30_days', value);

  int? get pestTreatmentsLast30Days =>
      getField<int>('pest_treatments_last_30_days');
  set pestTreatmentsLast30Days(int? value) =>
      setField<int>('pest_treatments_last_30_days', value);

  int? get diseaseTreatmentsLast30Days =>
      getField<int>('disease_treatments_last_30_days');
  set diseaseTreatmentsLast30Days(int? value) =>
      setField<int>('disease_treatments_last_30_days', value);

  int? get totalTreatmentsLast30Days =>
      getField<int>('total_treatments_last_30_days');
  set totalTreatmentsLast30Days(int? value) =>
      setField<int>('total_treatments_last_30_days', value);

  int? get uniquePestMethodsLast30Days =>
      getField<int>('unique_pest_methods_last_30_days');
  set uniquePestMethodsLast30Days(int? value) =>
      setField<int>('unique_pest_methods_last_30_days', value);

  int? get uniqueDiseaseMethodsLast30Days =>
      getField<int>('unique_disease_methods_last_30_days');
  set uniqueDiseaseMethodsLast30Days(int? value) =>
      setField<int>('unique_disease_methods_last_30_days', value);

  int? get totalUniqueMethodsLast30Days =>
      getField<int>('total_unique_methods_last_30_days');
  set totalUniqueMethodsLast30Days(int? value) =>
      setField<int>('total_unique_methods_last_30_days', value);

  DateTime? get lastPestTreatmentDate =>
      getField<DateTime>('last_pest_treatment_date');
  set lastPestTreatmentDate(DateTime? value) =>
      setField<DateTime>('last_pest_treatment_date', value);

  String? get lastPestTreatmentAction =>
      getField<String>('last_pest_treatment_action');
  set lastPestTreatmentAction(String? value) =>
      setField<String>('last_pest_treatment_action', value);

  int? get daysSinceLastPestTreatment =>
      getField<int>('days_since_last_pest_treatment');
  set daysSinceLastPestTreatment(int? value) =>
      setField<int>('days_since_last_pest_treatment', value);

  DateTime? get lastDiseaseTreatmentDate =>
      getField<DateTime>('last_disease_treatment_date');
  set lastDiseaseTreatmentDate(DateTime? value) =>
      setField<DateTime>('last_disease_treatment_date', value);

  String? get lastDiseaseTreatmentAction =>
      getField<String>('last_disease_treatment_action');
  set lastDiseaseTreatmentAction(String? value) =>
      setField<String>('last_disease_treatment_action', value);

  int? get daysSinceLastDiseaseTreatment =>
      getField<int>('days_since_last_disease_treatment');
  set daysSinceLastDiseaseTreatment(int? value) =>
      setField<int>('days_since_last_disease_treatment', value);

  DateTime? get dashboardGeneratedAt =>
      getField<DateTime>('dashboard_generated_at');
  set dashboardGeneratedAt(DateTime? value) =>
      setField<DateTime>('dashboard_generated_at', value);
}
