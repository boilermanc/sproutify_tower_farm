import '../database.dart';

class DiseaseObservationsTable extends SupabaseTable<DiseaseObservationsRow> {
  @override
  String get tableName => 'disease_observations';

  @override
  DiseaseObservationsRow createRow(Map<String, dynamic> data) =>
      DiseaseObservationsRow(data);
}

class DiseaseObservationsRow extends SupabaseDataRow {
  DiseaseObservationsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => DiseaseObservationsTable();

  String? get observationId => getField<String>('observation_id');
  set observationId(String? value) => setField<String>('observation_id', value);

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  DateTime? get observationDate => getField<DateTime>('observation_date');
  set observationDate(DateTime? value) =>
      setField<DateTime>('observation_date', value);

  String? get diseaseId => getField<String>('disease_id');
  set diseaseId(String? value) => setField<String>('disease_id', value);

  String? get severityId => getField<String>('severity_id');
  set severityId(String? value) => setField<String>('severity_id', value);

  int? get towerId => getField<int>('tower_id');
  set towerId(int? value) => setField<int>('tower_id', value);

  String? get actionTaken => getField<String>('action_taken');
  set actionTaken(String? value) => setField<String>('action_taken', value);

  String? get methodId => getField<String>('method_id');
  set methodId(String? value) => setField<String>('method_id', value);

  String? get diseaseImage => getField<String>('disease_image');
  set diseaseImage(String? value) => setField<String>('disease_image', value);

  String? get notes => getField<String>('notes');
  set notes(String? value) => setField<String>('notes', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  String? get diseaseName => getField<String>('disease_name');
  set diseaseName(String? value) => setField<String>('disease_name', value);

  String? get diseaseDescription => getField<String>('disease_description');
  set diseaseDescription(String? value) =>
      setField<String>('disease_description', value);

  String? get symptoms => getField<String>('symptoms');
  set symptoms(String? value) => setField<String>('symptoms', value);

  String? get pathogenType => getField<String>('pathogen_type');
  set pathogenType(String? value) => setField<String>('pathogen_type', value);

  String? get managementStrategy => getField<String>('management_strategy');
  set managementStrategy(String? value) =>
      setField<String>('management_strategy', value);

  String? get preventionStrategy => getField<String>('prevention_strategy');
  set preventionStrategy(String? value) =>
      setField<String>('prevention_strategy', value);

  String? get towerIdentifier => getField<String>('tower_identifier');
  set towerIdentifier(String? value) =>
      setField<String>('tower_identifier', value);

  String? get severityLevel => getField<String>('severity_level');
  set severityLevel(String? value) => setField<String>('severity_level', value);

  String? get severityDescription => getField<String>('severity_description');
  set severityDescription(String? value) =>
      setField<String>('severity_description', value);

  String? get severityTextColor => getField<String>('severity_text_color');
  set severityTextColor(String? value) =>
      setField<String>('severity_text_color', value);

  String? get managementRecommendations =>
      getField<String>('management_recommendations');
  set managementRecommendations(String? value) =>
      setField<String>('management_recommendations', value);

  String? get severityBackgroundColor =>
      getField<String>('severity_background_color');
  set severityBackgroundColor(String? value) =>
      setField<String>('severity_background_color', value);

  String? get severityBorderColor => getField<String>('severity_border_color');
  set severityBorderColor(String? value) =>
      setField<String>('severity_border_color', value);

  String? get employeeName => getField<String>('employee_name');
  set employeeName(String? value) => setField<String>('employee_name', value);

  String? get employeeFirstName => getField<String>('employee_first_name');
  set employeeFirstName(String? value) =>
      setField<String>('employee_first_name', value);

  String? get employeeLastName => getField<String>('employee_last_name');
  set employeeLastName(String? value) =>
      setField<String>('employee_last_name', value);

  String? get methodName => getField<String>('method_name');
  set methodName(String? value) => setField<String>('method_name', value);

  String? get methodDescription => getField<String>('method_description');
  set methodDescription(String? value) =>
      setField<String>('method_description', value);

  String? get actionStatus => getField<String>('action_status');
  set actionStatus(String? value) => setField<String>('action_status', value);

  String? get actionStatusTextColor =>
      getField<String>('action_status_text_color');
  set actionStatusTextColor(String? value) =>
      setField<String>('action_status_text_color', value);

  String? get actionStatusBackgroundColor =>
      getField<String>('action_status_background_color');
  set actionStatusBackgroundColor(String? value) =>
      setField<String>('action_status_background_color', value);

  int? get daysSinceObservation => getField<int>('days_since_observation');
  set daysSinceObservation(int? value) =>
      setField<int>('days_since_observation', value);

  String? get observationStatus => getField<String>('observation_status');
  set observationStatus(String? value) =>
      setField<String>('observation_status', value);

  bool? get isUrgent => getField<bool>('is_urgent');
  set isUrgent(bool? value) => setField<bool>('is_urgent', value);
}
