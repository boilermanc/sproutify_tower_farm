import '../database.dart';

class PestLocationsTable extends SupabaseTable<PestLocationsRow> {
  @override
  String get tableName => 'pest_locations';

  @override
  PestLocationsRow createRow(Map<String, dynamic> data) =>
      PestLocationsRow(data);
}

class PestLocationsRow extends SupabaseDataRow {
  PestLocationsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PestLocationsTable();

  String? get locationId => getField<String>('location_id');
  set locationId(String? value) => setField<String>('location_id', value);

  String? get locationCode => getField<String>('location_code');
  set locationCode(String? value) => setField<String>('location_code', value);

  String? get locationName => getField<String>('location_name');
  set locationName(String? value) => setField<String>('location_name', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  int? get sortOrder => getField<int>('sort_order');
  set sortOrder(int? value) => setField<int>('sort_order', value);
}
