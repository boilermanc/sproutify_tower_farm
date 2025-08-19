import '../database.dart';

class DiseasesTable extends SupabaseTable<DiseasesRow> {
  @override
  String get tableName => 'diseases';

  @override
  DiseasesRow createRow(Map<String, dynamic> data) => DiseasesRow(data);
}

class DiseasesRow extends SupabaseDataRow {
  DiseasesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => DiseasesTable();

  String get diseaseId => getField<String>('disease_id')!;
  set diseaseId(String value) => setField<String>('disease_id', value);

  String get diseaseName => getField<String>('disease_name')!;
  set diseaseName(String value) => setField<String>('disease_name', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

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

  bool? get commonInArea => getField<bool>('common_in_area');
  set commonInArea(bool? value) => setField<bool>('common_in_area', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  DateTime get updatedAt => getField<DateTime>('updated_at')!;
  set updatedAt(DateTime value) => setField<DateTime>('updated_at', value);

  String? get shortName => getField<String>('short_name');
  set shortName(String? value) => setField<String>('short_name', value);
}
