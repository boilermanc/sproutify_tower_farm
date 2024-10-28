import '../database.dart';

class PestObservationsViewTable extends SupabaseTable<PestObservationsViewRow> {
  @override
  String get tableName => 'pest_observations_view';

  @override
  PestObservationsViewRow createRow(Map<String, dynamic> data) =>
      PestObservationsViewRow(data);
}

class PestObservationsViewRow extends SupabaseDataRow {
  PestObservationsViewRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PestObservationsViewTable();

  String? get observationId => getField<String>('observation_id');
  set observationId(String? value) => setField<String>('observation_id', value);

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  DateTime? get observationDate => getField<DateTime>('observation_date');
  set observationDate(DateTime? value) =>
      setField<DateTime>('observation_date', value);

  String? get actionTaken => getField<String>('action_taken');
  set actionTaken(String? value) => setField<String>('action_taken', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  String? get pestId => getField<String>('pest_id');
  set pestId(String? value) => setField<String>('pest_id', value);

  String? get pestName => getField<String>('pest_name');
  set pestName(String? value) => setField<String>('pest_name', value);

  String? get severityId => getField<String>('severity_id');
  set severityId(String? value) => setField<String>('severity_id', value);

  String? get severityLevel => getField<String>('severity_level');
  set severityLevel(String? value) => setField<String>('severity_level', value);

  String? get severityDescription => getField<String>('severity_description');
  set severityDescription(String? value) =>
      setField<String>('severity_description', value);

  String? get severityColor => getField<String>('severity_color');
  set severityColor(String? value) => setField<String>('severity_color', value);

  String? get towerIdentifier => getField<String>('tower_identifier');
  set towerIdentifier(String? value) =>
      setField<String>('tower_identifier', value);

  String? get methodId => getField<String>('method_id');
  set methodId(String? value) => setField<String>('method_id', value);

  String? get employeeLastName => getField<String>('employee_last_name');
  set employeeLastName(String? value) =>
      setField<String>('employee_last_name', value);

  String? get formattedDate => getField<String>('formatted_date');
  set formattedDate(String? value) => setField<String>('formatted_date', value);
}
