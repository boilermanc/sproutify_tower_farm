import '../database.dart';

class PlantWasteReasonsTable extends SupabaseTable<PlantWasteReasonsRow> {
  @override
  String get tableName => 'plant_waste_reasons';

  @override
  PlantWasteReasonsRow createRow(Map<String, dynamic> data) =>
      PlantWasteReasonsRow(data);
}

class PlantWasteReasonsRow extends SupabaseDataRow {
  PlantWasteReasonsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PlantWasteReasonsTable();

  int get reasonId => getField<int>('reason_id')!;
  set reasonId(int value) => setField<int>('reason_id', value);

  String get category => getField<String>('category')!;
  set category(String value) => setField<String>('category', value);

  String get reasonName => getField<String>('reason_name')!;
  set reasonName(String value) => setField<String>('reason_name', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  bool? get requiresPhoto => getField<bool>('requires_photo');
  set requiresPhoto(bool? value) => setField<bool>('requires_photo', value);

  bool? get requiresNotes => getField<bool>('requires_notes');
  set requiresNotes(bool? value) => setField<bool>('requires_notes', value);

  int? get sortOrder => getField<int>('sort_order');
  set sortOrder(int? value) => setField<int>('sort_order', value);

  bool? get isActive => getField<bool>('is_active');
  set isActive(bool? value) => setField<bool>('is_active', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);
}
