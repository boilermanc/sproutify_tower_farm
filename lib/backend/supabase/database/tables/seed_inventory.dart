import '../database.dart';

class SeedInventoryTable extends SupabaseTable<SeedInventoryRow> {
  @override
  String get tableName => 'seed_inventory';

  @override
  SeedInventoryRow createRow(Map<String, dynamic> data) =>
      SeedInventoryRow(data);
}

class SeedInventoryRow extends SupabaseDataRow {
  SeedInventoryRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SeedInventoryTable();

  String get inventoryId => getField<String>('inventory_id')!;
  set inventoryId(String value) => setField<String>('inventory_id', value);

  String get farmId => getField<String>('farm_id')!;
  set farmId(String value) => setField<String>('farm_id', value);

  String get vendorId => getField<String>('vendor_id')!;
  set vendorId(String value) => setField<String>('vendor_id', value);

  int get currentStock => getField<int>('current_stock')!;
  set currentStock(int value) => setField<int>('current_stock', value);

  double get costPerUnit => getField<double>('cost_per_unit')!;
  set costPerUnit(double value) => setField<double>('cost_per_unit', value);

  double? get totalCost => getField<double>('total_cost');
  set totalCost(double? value) => setField<double>('total_cost', value);

  DateTime? get lastRestockDate => getField<DateTime>('last_restock_date');
  set lastRestockDate(DateTime? value) =>
      setField<DateTime>('last_restock_date', value);

  int get plantId => getField<int>('plant_id')!;
  set plantId(int value) => setField<int>('plant_id', value);

  bool get active => getField<bool>('active')!;
  set active(bool value) => setField<bool>('active', value);

  int get quantityAdded => getField<int>('quantity_added')!;
  set quantityAdded(int value) => setField<int>('quantity_added', value);
}
