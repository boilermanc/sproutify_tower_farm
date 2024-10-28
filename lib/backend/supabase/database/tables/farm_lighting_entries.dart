import '../database.dart';

class FarmLightingEntriesTable extends SupabaseTable<FarmLightingEntriesRow> {
  @override
  String get tableName => 'farm_lighting_entries';

  @override
  FarmLightingEntriesRow createRow(Map<String, dynamic> data) =>
      FarmLightingEntriesRow(data);
}

class FarmLightingEntriesRow extends SupabaseDataRow {
  FarmLightingEntriesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => FarmLightingEntriesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get userId => getField<String>('user_id')!;
  set userId(String value) => setField<String>('user_id', value);

  String get farmId => getField<String>('farm_id')!;
  set farmId(String value) => setField<String>('farm_id', value);

  int get quantity => getField<int>('quantity')!;
  set quantity(int value) => setField<int>('quantity', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  bool? get active => getField<bool>('active');
  set active(bool? value) => setField<bool>('active', value);

  String? get controllerId => getField<String>('controller_id');
  set controllerId(String? value) => setField<String>('controller_id', value);

  String? get lightingFixtureId => getField<String>('lighting_fixture_id');
  set lightingFixtureId(String? value) =>
      setField<String>('lighting_fixture_id', value);
}
