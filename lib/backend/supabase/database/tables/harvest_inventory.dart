import '../database.dart';

class HarvestInventoryTable extends SupabaseTable<HarvestInventoryRow> {
  @override
  String get tableName => 'harvest_inventory';

  @override
  HarvestInventoryRow createRow(Map<String, dynamic> data) =>
      HarvestInventoryRow(data);
}

class HarvestInventoryRow extends SupabaseDataRow {
  HarvestInventoryRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => HarvestInventoryTable();

  int get inventoryId => getField<int>('inventory_id')!;
  set inventoryId(int value) => setField<int>('inventory_id', value);

  int? get harvestItemId => getField<int>('harvest_item_id');
  set harvestItemId(int? value) => setField<int>('harvest_item_id', value);

  int get plantId => getField<int>('plant_id')!;
  set plantId(int value) => setField<int>('plant_id', value);

  int get quantity => getField<int>('quantity')!;
  set quantity(int value) => setField<int>('quantity', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  String get farmId => getField<String>('farm_id')!;
  set farmId(String value) => setField<String>('farm_id', value);

  DateTime? get seededDate => getField<DateTime>('seeded_date');
  set seededDate(DateTime? value) => setField<DateTime>('seeded_date', value);

  DateTime? get harvestDate => getField<DateTime>('harvest_date');
  set harvestDate(DateTime? value) => setField<DateTime>('harvest_date', value);

  int get harvestActionId => getField<int>('harvest_action_id')!;
  set harvestActionId(int value) => setField<int>('harvest_action_id', value);

  int? get originalQuantity => getField<int>('original_quantity');
  set originalQuantity(int? value) => setField<int>('original_quantity', value);

  DateTime? get expiryDate => getField<DateTime>('expiry_date');
  set expiryDate(DateTime? value) => setField<DateTime>('expiry_date', value);

  int? get wasteQuantity => getField<int>('waste_quantity');
  set wasteQuantity(int? value) => setField<int>('waste_quantity', value);

  int? get donatedQuantity => getField<int>('donated_quantity');
  set donatedQuantity(int? value) => setField<int>('donated_quantity', value);

  String? get notes => getField<String>('notes');
  set notes(String? value) => setField<String>('notes', value);
}
