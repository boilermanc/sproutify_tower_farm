import '../database.dart';

class FarmProductCatalogTable extends SupabaseTable<FarmProductCatalogRow> {
  @override
  String get tableName => 'farm_product_catalog';

  @override
  FarmProductCatalogRow createRow(Map<String, dynamic> data) =>
      FarmProductCatalogRow(data);
}

class FarmProductCatalogRow extends SupabaseDataRow {
  FarmProductCatalogRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => FarmProductCatalogTable();

  String get farmProductId => getField<String>('farm_product_id')!;
  set farmProductId(String value) => setField<String>('farm_product_id', value);

  String get farmId => getField<String>('farm_id')!;
  set farmId(String value) => setField<String>('farm_id', value);

  String get productId => getField<String>('product_id')!;
  set productId(String value) => setField<String>('product_id', value);

  bool get active => getField<bool>('active')!;
  set active(bool value) => setField<bool>('active', value);

  double? get costPerUnit => getField<double>('cost_per_unit');
  set costPerUnit(double? value) => setField<double>('cost_per_unit', value);

  double? get initialQuantity => getField<double>('initial_quantity');
  set initialQuantity(double? value) =>
      setField<double>('initial_quantity', value);

  double? get minimumQuantity => getField<double>('minimum_quantity');
  set minimumQuantity(double? value) =>
      setField<double>('minimum_quantity', value);

  double get currentQuantity => getField<double>('current_quantity')!;
  set currentQuantity(double value) =>
      setField<double>('current_quantity', value);

  String? get customNotes => getField<String>('custom_notes');
  set customNotes(String? value) => setField<String>('custom_notes', value);

  DateTime get dateAdded => getField<DateTime>('date_added')!;
  set dateAdded(DateTime value) => setField<DateTime>('date_added', value);

  String get addedByUserId => getField<String>('added_by_user_id')!;
  set addedByUserId(String value) =>
      setField<String>('added_by_user_id', value);

  DateTime? get lastRestocked => getField<DateTime>('last_restocked');
  set lastRestocked(DateTime? value) =>
      setField<DateTime>('last_restocked', value);

  String? get preferredVendorId => getField<String>('preferred_vendor_id');
  set preferredVendorId(String? value) =>
      setField<String>('preferred_vendor_id', value);

  String? get storageLocation => getField<String>('storage_location');
  set storageLocation(String? value) =>
      setField<String>('storage_location', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  DateTime get updatedAt => getField<DateTime>('updated_at')!;
  set updatedAt(DateTime value) => setField<DateTime>('updated_at', value);

  String get productCategoryId => getField<String>('product_category_id')!;
  set productCategoryId(String value) =>
      setField<String>('product_category_id', value);

  String get productTypeId => getField<String>('product_type_id')!;
  set productTypeId(String value) => setField<String>('product_type_id', value);
}
