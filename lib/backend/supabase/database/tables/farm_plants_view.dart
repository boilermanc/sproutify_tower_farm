import '../database.dart';

class FarmPlantsViewTable extends SupabaseTable<FarmPlantsViewRow> {
  @override
  String get tableName => 'farm_plants_view';

  @override
  FarmPlantsViewRow createRow(Map<String, dynamic> data) =>
      FarmPlantsViewRow(data);
}

class FarmPlantsViewRow extends SupabaseDataRow {
  FarmPlantsViewRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => FarmPlantsViewTable();

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);

  int? get plantId => getField<int>('plant_id');
  set plantId(int? value) => setField<int>('plant_id', value);

  String? get plantName => getField<String>('plant_name');
  set plantName(String? value) => setField<String>('plant_name', value);

  String? get shortDescription => getField<String>('short_description');
  set shortDescription(String? value) =>
      setField<String>('short_description', value);

  bool? get isActive => getField<bool>('is_active');
  set isActive(bool? value) => setField<bool>('is_active', value);

  String? get imageUrl => getField<String>('image_url');
  set imageUrl(String? value) => setField<String>('image_url', value);

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

  String? get preferredVendorName => getField<String>('preferred_vendor_name');
  set preferredVendorName(String? value) =>
      setField<String>('preferred_vendor_name', value);

  int? get currentStock => getField<int>('current_stock');
  set currentStock(int? value) => setField<int>('current_stock', value);

  int? get activeLots => getField<int>('active_lots');
  set activeLots(int? value) => setField<int>('active_lots', value);

  double? get totalInventoryValue => getField<double>('total_inventory_value');
  set totalInventoryValue(double? value) =>
      setField<double>('total_inventory_value', value);

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

  DateTime? get nextExpirationDate =>
      getField<DateTime>('next_expiration_date');
  set nextExpirationDate(DateTime? value) =>
      setField<DateTime>('next_expiration_date', value);

  String? get statusText => getField<String>('status_text');
  set statusText(String? value) => setField<String>('status_text', value);

  bool? get needsInitialInventory => getField<bool>('needs_initial_inventory');
  set needsInitialInventory(bool? value) =>
      setField<bool>('needs_initial_inventory', value);

  bool? get isLowStock => getField<bool>('is_low_stock');
  set isLowStock(bool? value) => setField<bool>('is_low_stock', value);

  bool? get needsReorder => getField<bool>('needs_reorder');
  set needsReorder(bool? value) => setField<bool>('needs_reorder', value);

  String? get farmName => getField<String>('farm_name');
  set farmName(String? value) => setField<String>('farm_name', value);

  DateTime? get farmPlantCreatedAt =>
      getField<DateTime>('farm_plant_created_at');
  set farmPlantCreatedAt(DateTime? value) =>
      setField<DateTime>('farm_plant_created_at', value);

  String? get createdBy => getField<String>('created_by');
  set createdBy(String? value) => setField<String>('created_by', value);
}
