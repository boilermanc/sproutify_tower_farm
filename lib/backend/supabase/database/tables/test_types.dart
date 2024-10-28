import '../database.dart';

class TestTypesTable extends SupabaseTable<TestTypesRow> {
  @override
  String get tableName => 'test_types';

  @override
  TestTypesRow createRow(Map<String, dynamic> data) => TestTypesRow(data);
}

class TestTypesRow extends SupabaseDataRow {
  TestTypesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TestTypesTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);
}
