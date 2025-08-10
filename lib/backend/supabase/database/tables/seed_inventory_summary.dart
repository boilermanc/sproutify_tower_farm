import '../database.dart';

class SeedInventorySummaryTable extends SupabaseTable<SeedInventorySummaryRow> {
  @override
  String get tableName => 'seed_inventory_summary';

  @override
  SeedInventorySummaryRow createRow(Map<String, dynamic> data) =>
      SeedInventorySummaryRow(data);
}

class SeedInventorySummaryRow extends SupabaseDataRow {
  SeedInventorySummaryRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SeedInventorySummaryTable();

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);

  String? get farmName => getField<String>('farm_name');
  set farmName(String? value) => setField<String>('farm_name', value);

  int? get plantId => getField<int>('plant_id');
  set plantId(int? value) => setField<int>('plant_id', value);

  String? get plantName => getField<String>('plant_name');
  set plantName(String? value) => setField<String>('plant_name', value);

  String? get vendorId => getField<String>('vendor_id');
  set vendorId(String? value) => setField<String>('vendor_id', value);

  String? get vendorName => getField<String>('vendor_name');
  set vendorName(String? value) => setField<String>('vendor_name', value);

  bool? get farmPlantActive => getField<bool>('farm_plant_active');
  set farmPlantActive(bool? value) =>
      setField<bool>('farm_plant_active', value);

  int? get lowStockThreshold => getField<int>('low_stock_threshold');
  set lowStockThreshold(int? value) =>
      setField<int>('low_stock_threshold', value);

  int? get reorderPoint => getField<int>('reorder_point');
  set reorderPoint(int? value) => setField<int>('reorder_point', value);

  int? get maxStockLevel => getField<int>('max_stock_level');
  set maxStockLevel(int? value) => setField<int>('max_stock_level', value);

  String? get preferredVendorId => getField<String>('preferred_vendor_id');
  set preferredVendorId(String? value) =>
      setField<String>('preferred_vendor_id', value);

  int? get totalCurrentStock => getField<int>('total_current_stock');
  set totalCurrentStock(int? value) =>
      setField<int>('total_current_stock', value);

  int? get totalOriginalStock => getField<int>('total_original_stock');
  set totalOriginalStock(int? value) =>
      setField<int>('total_original_stock', value);

  int? get totalLots => getField<int>('total_lots');
  set totalLots(int? value) => setField<int>('total_lots', value);

  int? get activeLots => getField<int>('active_lots');
  set activeLots(int? value) => setField<int>('active_lots', value);

  double? get avgCostPerUnit => getField<double>('avg_cost_per_unit');
  set avgCostPerUnit(double? value) =>
      setField<double>('avg_cost_per_unit', value);

  double? get totalInventoryValue => getField<double>('total_inventory_value');
  set totalInventoryValue(double? value) =>
      setField<double>('total_inventory_value', value);

  double? get avgGerminationRate => getField<double>('avg_germination_rate');
  set avgGerminationRate(double? value) =>
      setField<double>('avg_germination_rate', value);

  DateTime? get oldestLotDate => getField<DateTime>('oldest_lot_date');
  set oldestLotDate(DateTime? value) =>
      setField<DateTime>('oldest_lot_date', value);

  DateTime? get newestLotDate => getField<DateTime>('newest_lot_date');
  set newestLotDate(DateTime? value) =>
      setField<DateTime>('newest_lot_date', value);

  DateTime? get nextExpirationDate =>
      getField<DateTime>('next_expiration_date');
  set nextExpirationDate(DateTime? value) =>
      setField<DateTime>('next_expiration_date', value);

  String? get nextFifoLotId => getField<String>('next_fifo_lot_id');
  set nextFifoLotId(String? value) =>
      setField<String>('next_fifo_lot_id', value);

  String? get nextFifoLotNumber => getField<String>('next_fifo_lot_number');
  set nextFifoLotNumber(String? value) =>
      setField<String>('next_fifo_lot_number', value);

  int? get nextFifoQuantity => getField<int>('next_fifo_quantity');
  set nextFifoQuantity(int? value) =>
      setField<int>('next_fifo_quantity', value);

  String? get inventoryStatus => getField<String>('inventory_status');
  set inventoryStatus(String? value) =>
      setField<String>('inventory_status', value);

  String? get statusBackgroundColor =>
      getField<String>('status_background_color');
  set statusBackgroundColor(String? value) =>
      setField<String>('status_background_color', value);

  String? get statusTextColor => getField<String>('status_text_color');
  set statusTextColor(String? value) =>
      setField<String>('status_text_color', value);

  bool? get needsInitialInventory => getField<bool>('needs_initial_inventory');
  set needsInitialInventory(bool? value) =>
      setField<bool>('needs_initial_inventory', value);

  bool? get needsReorder => getField<bool>('needs_reorder');
  set needsReorder(bool? value) => setField<bool>('needs_reorder', value);
}
