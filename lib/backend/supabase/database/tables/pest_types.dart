import '../database.dart';

class PestTypesTable extends SupabaseTable<PestTypesRow> {
  @override
  String get tableName => 'pest_types';

  @override
  PestTypesRow createRow(Map<String, dynamic> data) => PestTypesRow(data);
}

class PestTypesRow extends SupabaseDataRow {
  PestTypesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PestTypesTable();

  String get pestId => getField<String>('pest_id')!;
  set pestId(String value) => setField<String>('pest_id', value);

  String get pestName => getField<String>('pest_name')!;
  set pestName(String value) => setField<String>('pest_name', value);

  String? get scientificName => getField<String>('scientific_name');
  set scientificName(String? value) =>
      setField<String>('scientific_name', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  String? get pestType => getField<String>('pest_type');
  set pestType(String? value) => setField<String>('pest_type', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  DateTime get updatedAt => getField<DateTime>('updated_at')!;
  set updatedAt(DateTime value) => setField<DateTime>('updated_at', value);
}
