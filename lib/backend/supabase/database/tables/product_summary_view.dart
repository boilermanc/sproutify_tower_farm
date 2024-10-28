import '../database.dart';

class ProductSummaryViewTable extends SupabaseTable<ProductSummaryViewRow> {
  @override
  String get tableName => 'product_summary_view';

  @override
  ProductSummaryViewRow createRow(Map<String, dynamic> data) =>
      ProductSummaryViewRow(data);
}

class ProductSummaryViewRow extends SupabaseDataRow {
  ProductSummaryViewRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ProductSummaryViewTable();

  String? get productId => getField<String>('product_id');
  set productId(String? value) => setField<String>('product_id', value);

  String? get productName => getField<String>('product_name');
  set productName(String? value) => setField<String>('product_name', value);

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);

  String? get unit => getField<String>('unit');
  set unit(String? value) => setField<String>('unit', value);

  double? get costPerUnit => getField<double>('cost_per_unit');
  set costPerUnit(double? value) => setField<double>('cost_per_unit', value);

  bool? get active => getField<bool>('active');
  set active(bool? value) => setField<bool>('active', value);

  String? get imageUrl => getField<String>('image_url');
  set imageUrl(String? value) => setField<String>('image_url', value);

  String? get vendorId => getField<String>('vendor_id');
  set vendorId(String? value) => setField<String>('vendor_id', value);

  String? get vendorName => getField<String>('vendor_name');
  set vendorName(String? value) => setField<String>('vendor_name', value);

  String? get productCategoryId => getField<String>('product_category_id');
  set productCategoryId(String? value) =>
      setField<String>('product_category_id', value);

  String? get categoryName => getField<String>('category_name');
  set categoryName(String? value) => setField<String>('category_name', value);

  String? get productTypeId => getField<String>('product_type_id');
  set productTypeId(String? value) =>
      setField<String>('product_type_id', value);

  String? get typeName => getField<String>('type_name');
  set typeName(String? value) => setField<String>('type_name', value);

  double? get quantityOnHand => getField<double>('quantity_on_hand');
  set quantityOnHand(double? value) =>
      setField<double>('quantity_on_hand', value);

  double? get minQuantity => getField<double>('min_quantity');
  set minQuantity(double? value) => setField<double>('min_quantity', value);

  String? get stockStatus => getField<String>('stock_status');
  set stockStatus(String? value) => setField<String>('stock_status', value);

  DateTime? get lastInventoryUpdate =>
      getField<DateTime>('last_inventory_update');
  set lastInventoryUpdate(DateTime? value) =>
      setField<DateTime>('last_inventory_update', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  double? get currentValue => getField<double>('current_value');
  set currentValue(double? value) => setField<double>('current_value', value);

  String? get createdByUserId => getField<String>('created_by_user_id');
  set createdByUserId(String? value) =>
      setField<String>('created_by_user_id', value);
}
