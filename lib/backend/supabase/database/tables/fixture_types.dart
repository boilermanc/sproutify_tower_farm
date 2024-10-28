import '../database.dart';

class FixtureTypesTable extends SupabaseTable<FixtureTypesRow> {
  @override
  String get tableName => 'fixture_types';

  @override
  FixtureTypesRow createRow(Map<String, dynamic> data) => FixtureTypesRow(data);
}

class FixtureTypesRow extends SupabaseDataRow {
  FixtureTypesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => FixtureTypesTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get typeName => getField<String>('type_name')!;
  set typeName(String value) => setField<String>('type_name', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  String? get uuidId => getField<String>('uuid_id');
  set uuidId(String? value) => setField<String>('uuid_id', value);
}
