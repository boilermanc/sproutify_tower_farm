import '../database.dart';

class FarmStoreInventoryViewTable
    extends SupabaseTable<FarmStoreInventoryViewRow> {
  @override
  String get tableName => 'farm_store_inventory_view';

  @override
  FarmStoreInventoryViewRow createRow(Map<String, dynamic> data) =>
      FarmStoreInventoryViewRow(data);
}

class FarmStoreInventoryViewRow extends SupabaseDataRow {
  FarmStoreInventoryViewRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => FarmStoreInventoryViewTable();

  int? get inventoryId => getField<int>('inventory_id');
  set inventoryId(int? value) => setField<int>('inventory_id', value);

  int? get itemId => getField<int>('item_id');
  set itemId(int? value) => setField<int>('item_id', value);

  int? get plantId => getField<int>('plant_id');
  set plantId(int? value) => setField<int>('plant_id', value);

  String? get plantName => getField<String>('plant_name');
  set plantName(String? value) => setField<String>('plant_name', value);

  int? get allocatedQuantity => getField<int>('allocated_quantity');
  set allocatedQuantity(int? value) =>
      setField<int>('allocated_quantity', value);

  int? get remainingQuantity => getField<int>('remaining_quantity');
  set remainingQuantity(int? value) =>
      setField<int>('remaining_quantity', value);

  int? get soldQuantity => getField<int>('sold_quantity');
  set soldQuantity(int? value) => setField<int>('sold_quantity', value);

  int? get donatedQuantity => getField<int>('donated_quantity');
  set donatedQuantity(int? value) => setField<int>('donated_quantity', value);

  int? get wastedQuantity => getField<int>('wasted_quantity');
  set wastedQuantity(int? value) => setField<int>('wasted_quantity', value);

  DateTime? get storeEntryDate => getField<DateTime>('store_entry_date');
  set storeEntryDate(DateTime? value) =>
      setField<DateTime>('store_entry_date', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);
}
