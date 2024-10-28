import '../database.dart';

class TestStandardsTable extends SupabaseTable<TestStandardsRow> {
  @override
  String get tableName => 'test_standards';

  @override
  TestStandardsRow createRow(Map<String, dynamic> data) =>
      TestStandardsRow(data);
}

class TestStandardsRow extends SupabaseDataRow {
  TestStandardsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TestStandardsTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  String? get source => getField<String>('source');
  set source(String? value) => setField<String>('source', value);

  String? get version => getField<String>('version');
  set version(String? value) => setField<String>('version', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);
}
