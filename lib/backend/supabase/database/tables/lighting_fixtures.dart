import '../database.dart';

class LightingFixturesTable extends SupabaseTable<LightingFixturesRow> {
  @override
  String get tableName => 'lighting_fixtures';

  @override
  LightingFixturesRow createRow(Map<String, dynamic> data) =>
      LightingFixturesRow(data);
}

class LightingFixturesRow extends SupabaseDataRow {
  LightingFixturesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => LightingFixturesTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get farmId => getField<String>('farm_id')!;
  set farmId(String value) => setField<String>('farm_id', value);

  int get totalQuantity => getField<int>('total_quantity')!;
  set totalQuantity(int value) => setField<int>('total_quantity', value);

  int get availableQuantity => getField<int>('available_quantity')!;
  set availableQuantity(int value) =>
      setField<int>('available_quantity', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  String get fixtureTypeId => getField<String>('fixture_type_id')!;
  set fixtureTypeId(String value) => setField<String>('fixture_type_id', value);
}
