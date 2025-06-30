import '../database.dart';

class FarmProductsViewTable extends SupabaseTable<FarmProductsViewRow> {
  @override
  String get tableName => 'farm_products_view';

  @override
  FarmProductsViewRow createRow(Map<String, dynamic> data) =>
      FarmProductsViewRow(data);
}

class FarmProductsViewRow extends SupabaseDataRow {
  FarmProductsViewRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => FarmProductsViewTable();

  String? get farmProductId => getField<String>('farm_product_id');
  set farmProductId(String? value) =>
      setField<String>('farm_product_id', value);

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);

  String? get productId => getField<String>('product_id');
  set productId(String? value) => setField<String>('product_id', value);

  String? get productName => getField<String>('product_name');
  set productName(String? value) => setField<String>('product_name', value);

  String? get productCategory => getField<String>('product_category');
  set productCategory(String? value) =>
      setField<String>('product_category', value);

  String? get productType => getField<String>('product_type');
  set productType(String? value) => setField<String>('product_type', value);

  bool? get active => getField<bool>('active');
  set active(bool? value) => setField<bool>('active', value);

  double? get costPerUnit => getField<double>('cost_per_unit');
  set costPerUnit(double? value) => setField<double>('cost_per_unit', value);

  double? get initialQuantity => getField<double>('initial_quantity');
  set initialQuantity(double? value) =>
      setField<double>('initial_quantity', value);

  double? get minimumQuantity => getField<double>('minimum_quantity');
  set minimumQuantity(double? value) =>
      setField<double>('minimum_quantity', value);

  double? get quantityOnHand => getField<double>('quantity_on_hand');
  set quantityOnHand(double? value) =>
      setField<double>('quantity_on_hand', value);

  String? get stockStatus => getField<String>('stock_status');
  set stockStatus(String? value) => setField<String>('stock_status', value);

  String? get stockColor => getField<String>('stock_color');
  set stockColor(String? value) => setField<String>('stock_color', value);

  String? get customNotes => getField<String>('custom_notes');
  set customNotes(String? value) => setField<String>('custom_notes', value);

  DateTime? get dateAdded => getField<DateTime>('date_added');
  set dateAdded(DateTime? value) => setField<DateTime>('date_added', value);

  DateTime? get lastApplicationDate =>
      getField<DateTime>('last_application_date');
  set lastApplicationDate(DateTime? value) =>
      setField<DateTime>('last_application_date', value);

  String? get lastLocation => getField<String>('last_location');
  set lastLocation(String? value) => setField<String>('last_location', value);

  DateTime? get lastRestocked => getField<DateTime>('last_restocked');
  set lastRestocked(DateTime? value) =>
      setField<DateTime>('last_restocked', value);

  String? get storageLocation => getField<String>('storage_location');
  set storageLocation(String? value) =>
      setField<String>('storage_location', value);

  String? get preferredVendor => getField<String>('preferred_vendor');
  set preferredVendor(String? value) =>
      setField<String>('preferred_vendor', value);

  String? get addedByUser => getField<String>('added_by_user');
  set addedByUser(String? value) => setField<String>('added_by_user', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);
}
