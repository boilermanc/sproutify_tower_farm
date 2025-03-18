import '../database.dart';

class ReadingTypesTable extends SupabaseTable<ReadingTypesRow> {
  @override
  String get tableName => 'reading_types';

  @override
  ReadingTypesRow createRow(Map<String, dynamic> data) => ReadingTypesRow(data);
}

class ReadingTypesRow extends SupabaseDataRow {
  ReadingTypesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ReadingTypesTable();

  String get readingType => getField<String>('reading_type')!;
  set readingType(String value) => setField<String>('reading_type', value);

  String get displayName => getField<String>('display_name')!;
  set displayName(String value) => setField<String>('display_name', value);

  String? get unitType => getField<String>('unit_type');
  set unitType(String? value) => setField<String>('unit_type', value);

  String get displaySort => getField<String>('display sort')!;
  set displaySort(String value) => setField<String>('display sort', value);
}
