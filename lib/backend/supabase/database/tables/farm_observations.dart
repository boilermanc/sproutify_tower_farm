import '../database.dart';

class FarmObservationsTable extends SupabaseTable<FarmObservationsRow> {
  @override
  String get tableName => 'farm_observations';

  @override
  FarmObservationsRow createRow(Map<String, dynamic> data) =>
      FarmObservationsRow(data);
}

class FarmObservationsRow extends SupabaseDataRow {
  FarmObservationsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => FarmObservationsTable();

  String get observationId => getField<String>('observation_id')!;
  set observationId(String value) => setField<String>('observation_id', value);

  String get farmId => getField<String>('farm_id')!;
  set farmId(String value) => setField<String>('farm_id', value);

  String get userId => getField<String>('user_id')!;
  set userId(String value) => setField<String>('user_id', value);

  DateTime get observationDate => getField<DateTime>('observation_date')!;
  set observationDate(DateTime value) =>
      setField<DateTime>('observation_date', value);

  String get observationType => getField<String>('observation_type')!;
  set observationType(String value) =>
      setField<String>('observation_type', value);

  String get issueId => getField<String>('issue_id')!;
  set issueId(String value) => setField<String>('issue_id', value);

  String get issueType => getField<String>('issue_type')!;
  set issueType(String value) => setField<String>('issue_type', value);

  String? get actionTaken => getField<String>('action_taken');
  set actionTaken(String? value) => setField<String>('action_taken', value);

  String? get methodId => getField<String>('method_id');
  set methodId(String? value) => setField<String>('method_id', value);

  String get severityId => getField<String>('severity_id')!;
  set severityId(String value) => setField<String>('severity_id', value);

  int? get towerId => getField<int>('tower_id');
  set towerId(int? value) => setField<int>('tower_id', value);

  String? get observationImage => getField<String>('observation_image');
  set observationImage(String? value) =>
      setField<String>('observation_image', value);

  String? get notes => getField<String>('notes');
  set notes(String? value) => setField<String>('notes', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  DateTime get updatedAt => getField<DateTime>('updated_at')!;
  set updatedAt(DateTime value) => setField<DateTime>('updated_at', value);
}
