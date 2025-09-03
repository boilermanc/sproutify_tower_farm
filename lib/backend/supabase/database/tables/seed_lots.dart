import '../database.dart';

class SeedLotsTable extends SupabaseTable<SeedLotsRow> {
  @override
  String get tableName => 'seed_lots';

  @override
  SeedLotsRow createRow(Map<String, dynamic> data) => SeedLotsRow(data);
}

class SeedLotsRow extends SupabaseDataRow {
  SeedLotsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SeedLotsTable();

  String get lotId => getField<String>('lot_id')!;
  set lotId(String value) => setField<String>('lot_id', value);

  String get farmId => getField<String>('farm_id')!;
  set farmId(String value) => setField<String>('farm_id', value);

  int get plantId => getField<int>('plant_id')!;
  set plantId(int value) => setField<int>('plant_id', value);

  String get farmVendorId => getField<String>('farm_vendor_id')!;
  set farmVendorId(String value) => setField<String>('farm_vendor_id', value);

  String get lotNumber => getField<String>('lot_number')!;
  set lotNumber(String value) => setField<String>('lot_number', value);

  String? get purchaseOrderNumber => getField<String>('purchase_order_number');
  set purchaseOrderNumber(String? value) =>
      setField<String>('purchase_order_number', value);

  int get originalQuantity => getField<int>('original_quantity')!;
  set originalQuantity(int value) => setField<int>('original_quantity', value);

  int get currentQuantity => getField<int>('current_quantity')!;
  set currentQuantity(int value) => setField<int>('current_quantity', value);

  double get costPerUnit => getField<double>('cost_per_unit')!;
  set costPerUnit(double value) => setField<double>('cost_per_unit', value);

  DateTime get receivedDate => getField<DateTime>('received_date')!;
  set receivedDate(DateTime value) =>
      setField<DateTime>('received_date', value);

  DateTime? get expirationDate => getField<DateTime>('expiration_date');
  set expirationDate(DateTime? value) =>
      setField<DateTime>('expiration_date', value);

  DateTime? get lastGermTestDate => getField<DateTime>('last_germ_test_date');
  set lastGermTestDate(DateTime? value) =>
      setField<DateTime>('last_germ_test_date', value);

  double? get germinationRate => getField<double>('germination_rate');
  set germinationRate(double? value) =>
      setField<double>('germination_rate', value);

  double? get moistureContent => getField<double>('moisture_content');
  set moistureContent(double? value) =>
      setField<double>('moisture_content', value);

  String? get storageLocation => getField<String>('storage_location');
  set storageLocation(String? value) =>
      setField<String>('storage_location', value);

  double? get storageTemperature => getField<double>('storage_temperature');
  set storageTemperature(double? value) =>
      setField<double>('storage_temperature', value);

  bool get active => getField<bool>('active')!;
  set active(bool value) => setField<bool>('active', value);

  bool get quarantined => getField<bool>('quarantined')!;
  set quarantined(bool value) => setField<bool>('quarantined', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get createdBy => getField<String>('created_by')!;
  set createdBy(String value) => setField<String>('created_by', value);

  double get totalCost => getField<double>('total_cost')!;
  set totalCost(double value) => setField<double>('total_cost', value);

  String? get vendorSeedName => getField<String>('vendor_seed_name');
  set vendorSeedName(String? value) =>
      setField<String>('vendor_seed_name', value);

  String? get vendorSeedId => getField<String>('vendor_seed_id');
  set vendorSeedId(String? value) => setField<String>('vendor_seed_id', value);
}
