import '../database.dart';

class SpacerInventoryTable extends SupabaseTable<SpacerInventoryRow> {
  @override
  String get tableName => 'spacer_inventory';

  @override
  SpacerInventoryRow createRow(Map<String, dynamic> data) =>
      SpacerInventoryRow(data);
}

class SpacerInventoryRow extends SupabaseDataRow {
  SpacerInventoryRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SpacerInventoryTable();

  int? get spacerId => getField<int>('spacer_id');
  set spacerId(int? value) => setField<int>('spacer_id', value);

  int? get actionId => getField<int>('action_id');
  set actionId(int? value) => setField<int>('action_id', value);

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);

  int? get quantity => getField<int>('quantity');
  set quantity(int? value) => setField<int>('quantity', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  String? get plantType => getField<String>('plant_type');
  set plantType(String? value) => setField<String>('plant_type', value);

  DateTime? get seededDate => getField<DateTime>('seeded_date');
  set seededDate(DateTime? value) => setField<DateTime>('seeded_date', value);

  DateTime? get expectedReadyDate => getField<DateTime>('expected_ready_date');
  set expectedReadyDate(DateTime? value) =>
      setField<DateTime>('expected_ready_date', value);

  DateTime? get actualReadyDate => getField<DateTime>('actual_ready_date');
  set actualReadyDate(DateTime? value) =>
      setField<DateTime>('actual_ready_date', value);

  dynamic? get notes => getField<dynamic>('notes');
  set notes(dynamic? value) => setField<dynamic>('notes', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  DateTime? get spacerDate => getField<DateTime>('spacer_date');
  set spacerDate(DateTime? value) => setField<DateTime>('spacer_date', value);

  String? get statusColor => getField<String>('status_color');
  set statusColor(String? value) => setField<String>('status_color', value);

  String? get statusBackgroundColor =>
      getField<String>('status_background_color');
  set statusBackgroundColor(String? value) =>
      setField<String>('status_background_color', value);
}
