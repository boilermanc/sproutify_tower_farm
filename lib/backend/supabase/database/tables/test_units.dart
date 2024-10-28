import '../database.dart';

class TestUnitsTable extends SupabaseTable<TestUnitsRow> {
  @override
  String get tableName => 'test_units';

  @override
  TestUnitsRow createRow(Map<String, dynamic> data) => TestUnitsRow(data);
}

class TestUnitsRow extends SupabaseDataRow {
  TestUnitsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TestUnitsTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get unit => getField<String>('unit')!;
  set unit(String value) => setField<String>('unit', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);
}
