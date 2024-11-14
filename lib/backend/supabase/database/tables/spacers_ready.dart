import '../database.dart';

class SpacersReadyTable extends SupabaseTable<SpacersReadyRow> {
  @override
  String get tableName => 'spacers_ready';

  @override
  SpacersReadyRow createRow(Map<String, dynamic> data) => SpacersReadyRow(data);
}

class SpacersReadyRow extends SupabaseDataRow {
  SpacersReadyRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SpacersReadyTable();

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);

  String? get plantType => getField<String>('plant_type');
  set plantType(String? value) => setField<String>('plant_type', value);

  String? get plantName => getField<String>('plant_name');
  set plantName(String? value) => setField<String>('plant_name', value);

  int? get readyQuantity => getField<int>('ready_quantity');
  set readyQuantity(int? value) => setField<int>('ready_quantity', value);

  int? get growingQuantity => getField<int>('growing_quantity');
  set growingQuantity(int? value) => setField<int>('growing_quantity', value);

  int? get seededQuantity => getField<int>('seeded_quantity');
  set seededQuantity(int? value) => setField<int>('seeded_quantity', value);

  DateTime? get nextReadyDate => getField<DateTime>('next_ready_date');
  set nextReadyDate(DateTime? value) =>
      setField<DateTime>('next_ready_date', value);

  String? get availabilityStatus => getField<String>('availability_status');
  set availabilityStatus(String? value) =>
      setField<String>('availability_status', value);

  String? get statusColor => getField<String>('status_color');
  set statusColor(String? value) => setField<String>('status_color', value);

  String? get statusBackgroundColor =>
      getField<String>('status_background_color');
  set statusBackgroundColor(String? value) =>
      setField<String>('status_background_color', value);
}
