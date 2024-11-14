import '../database.dart';

class PestTreatmentLocationsTable
    extends SupabaseTable<PestTreatmentLocationsRow> {
  @override
  String get tableName => 'pest_treatment_locations';

  @override
  PestTreatmentLocationsRow createRow(Map<String, dynamic> data) =>
      PestTreatmentLocationsRow(data);
}

class PestTreatmentLocationsRow extends SupabaseDataRow {
  PestTreatmentLocationsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PestTreatmentLocationsTable();

  String get locationId => getField<String>('location_id')!;
  set locationId(String value) => setField<String>('location_id', value);

  String get locationCode => getField<String>('location_code')!;
  set locationCode(String value) => setField<String>('location_code', value);

  String get locationName => getField<String>('location_name')!;
  set locationName(String value) => setField<String>('location_name', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  bool? get active => getField<bool>('active');
  set active(bool? value) => setField<bool>('active', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  DateTime get updatedAt => getField<DateTime>('updated_at')!;
  set updatedAt(DateTime value) => setField<DateTime>('updated_at', value);

  int get sortOrder => getField<int>('sort_order')!;
  set sortOrder(int value) => setField<int>('sort_order', value);
}
