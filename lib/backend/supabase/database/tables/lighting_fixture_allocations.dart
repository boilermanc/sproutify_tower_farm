import '../database.dart';

class LightingFixtureAllocationsTable
    extends SupabaseTable<LightingFixtureAllocationsRow> {
  @override
  String get tableName => 'lighting_fixture_allocations';

  @override
  LightingFixtureAllocationsRow createRow(Map<String, dynamic> data) =>
      LightingFixtureAllocationsRow(data);
}

class LightingFixtureAllocationsRow extends SupabaseDataRow {
  LightingFixtureAllocationsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => LightingFixtureAllocationsTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get lightingFixtureId => getField<String>('lighting_fixture_id')!;
  set lightingFixtureId(String value) =>
      setField<String>('lighting_fixture_id', value);

  String get zoneId => getField<String>('zone_id')!;
  set zoneId(String value) => setField<String>('zone_id', value);

  int get quantity => getField<int>('quantity')!;
  set quantity(int value) => setField<int>('quantity', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);
}
