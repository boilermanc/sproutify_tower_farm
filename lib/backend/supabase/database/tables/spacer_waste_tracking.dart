import '../database.dart';

class SpacerWasteTrackingTable extends SupabaseTable<SpacerWasteTrackingRow> {
  @override
  String get tableName => 'spacer_waste_tracking';

  @override
  SpacerWasteTrackingRow createRow(Map<String, dynamic> data) =>
      SpacerWasteTrackingRow(data);
}

class SpacerWasteTrackingRow extends SupabaseDataRow {
  SpacerWasteTrackingRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SpacerWasteTrackingTable();

  DateTime? get wasteDate => getField<DateTime>('waste_date');
  set wasteDate(DateTime? value) => setField<DateTime>('waste_date', value);

  String? get wasteFarmId => getField<String>('waste_farm_id');
  set wasteFarmId(String? value) => setField<String>('waste_farm_id', value);

  String? get plantName => getField<String>('plant_name');
  set plantName(String? value) => setField<String>('plant_name', value);

  int? get wasteQuantity => getField<int>('waste_quantity');
  set wasteQuantity(int? value) => setField<int>('waste_quantity', value);

  int? get wasteActionId => getField<int>('waste_action_id');
  set wasteActionId(int? value) => setField<int>('waste_action_id', value);

  int? get originalActionId => getField<int>('original_action_id');
  set originalActionId(int? value) =>
      setField<int>('original_action_id', value);

  int? get originalQuantity => getField<int>('original_quantity');
  set originalQuantity(int? value) => setField<int>('original_quantity', value);

  DateTime? get originalDate => getField<DateTime>('original_date');
  set originalDate(DateTime? value) =>
      setField<DateTime>('original_date', value);
}
