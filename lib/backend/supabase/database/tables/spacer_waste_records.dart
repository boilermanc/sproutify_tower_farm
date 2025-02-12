import '../database.dart';

class SpacerWasteRecordsTable extends SupabaseTable<SpacerWasteRecordsRow> {
  @override
  String get tableName => 'spacer_waste_records';

  @override
  SpacerWasteRecordsRow createRow(Map<String, dynamic> data) =>
      SpacerWasteRecordsRow(data);
}

class SpacerWasteRecordsRow extends SupabaseDataRow {
  SpacerWasteRecordsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SpacerWasteRecordsTable();

  int get wasteId => getField<int>('waste_id')!;
  set wasteId(int value) => setField<int>('waste_id', value);

  String get farmId => getField<String>('farm_id')!;
  set farmId(String value) => setField<String>('farm_id', value);

  int get spacerId => getField<int>('spacer_id')!;
  set spacerId(int value) => setField<int>('spacer_id', value);

  int get reasonId => getField<int>('reason_id')!;
  set reasonId(int value) => setField<int>('reason_id', value);

  int get quantity => getField<int>('quantity')!;
  set quantity(int value) => setField<int>('quantity', value);

  String? get photoUrl => getField<String>('photo_url');
  set photoUrl(String? value) => setField<String>('photo_url', value);

  String? get notes => getField<String>('notes');
  set notes(String? value) => setField<String>('notes', value);

  int? get severity => getField<int>('severity');
  set severity(int? value) => setField<int>('severity', value);

  String get createdBy => getField<String>('created_by')!;
  set createdBy(String value) => setField<String>('created_by', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);
}
