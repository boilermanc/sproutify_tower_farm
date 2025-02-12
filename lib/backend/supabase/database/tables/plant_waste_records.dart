import '../database.dart';

class PlantWasteRecordsTable extends SupabaseTable<PlantWasteRecordsRow> {
  @override
  String get tableName => 'plant_waste_records';

  @override
  PlantWasteRecordsRow createRow(Map<String, dynamic> data) =>
      PlantWasteRecordsRow(data);
}

class PlantWasteRecordsRow extends SupabaseDataRow {
  PlantWasteRecordsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PlantWasteRecordsTable();

  int get wasteId => getField<int>('waste_id')!;
  set wasteId(int value) => setField<int>('waste_id', value);

  int get actionId => getField<int>('action_id')!;
  set actionId(int value) => setField<int>('action_id', value);

  String get farmId => getField<String>('farm_id')!;
  set farmId(String value) => setField<String>('farm_id', value);

  int get towerId => getField<int>('tower_id')!;
  set towerId(int value) => setField<int>('tower_id', value);

  int get reasonId => getField<int>('reason_id')!;
  set reasonId(int value) => setField<int>('reason_id', value);

  int get quantity => getField<int>('quantity')!;
  set quantity(int value) => setField<int>('quantity', value);

  String? get photoUrl => getField<String>('photo_url');
  set photoUrl(String? value) => setField<String>('photo_url', value);

  String? get notes => getField<String>('notes');
  set notes(String? value) => setField<String>('notes', value);

  String? get affectedArea => getField<String>('affected_area');
  set affectedArea(String? value) => setField<String>('affected_area', value);

  int? get severity => getField<int>('severity');
  set severity(int? value) => setField<int>('severity', value);

  String get createdBy => getField<String>('created_by')!;
  set createdBy(String value) => setField<String>('created_by', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  DateTime? get seededDate => getField<DateTime>('seeded_date');
  set seededDate(DateTime? value) => setField<DateTime>('seeded_date', value);

  int? get plantId => getField<int>('plant_id');
  set plantId(int? value) => setField<int>('plant_id', value);
}
