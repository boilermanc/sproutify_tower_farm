import '../database.dart';

class PestObservationsTable extends SupabaseTable<PestObservationsRow> {
  @override
  String get tableName => 'pest_observations';

  @override
  PestObservationsRow createRow(Map<String, dynamic> data) =>
      PestObservationsRow(data);
}

class PestObservationsRow extends SupabaseDataRow {
  PestObservationsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PestObservationsTable();

  String get observationId => getField<String>('observation_id')!;
  set observationId(String value) => setField<String>('observation_id', value);

  String get farmId => getField<String>('farm_id')!;
  set farmId(String value) => setField<String>('farm_id', value);

  String get userId => getField<String>('user_id')!;
  set userId(String value) => setField<String>('user_id', value);

  DateTime get observationDate => getField<DateTime>('observation_date')!;
  set observationDate(DateTime value) =>
      setField<DateTime>('observation_date', value);

  String? get actionTaken => getField<String>('action_taken');
  set actionTaken(String? value) => setField<String>('action_taken', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  DateTime get updatedAt => getField<DateTime>('updated_at')!;
  set updatedAt(DateTime value) => setField<DateTime>('updated_at', value);

  String get pestId => getField<String>('pest_id')!;
  set pestId(String value) => setField<String>('pest_id', value);

  String? get methodId => getField<String>('method_id');
  set methodId(String? value) => setField<String>('method_id', value);

  String get severityId => getField<String>('severity_id')!;
  set severityId(String value) => setField<String>('severity_id', value);

  int? get towerId => getField<int>('tower_id');
  set towerId(int? value) => setField<int>('tower_id', value);

  String? get pestImage => getField<String>('pest_image');
  set pestImage(String? value) => setField<String>('pest_image', value);
}
