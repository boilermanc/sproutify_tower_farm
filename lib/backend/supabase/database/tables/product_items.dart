import '../database.dart';

class ProductItemsTable extends SupabaseTable<ProductItemsRow> {
  @override
  String get tableName => 'product_items';

  @override
  ProductItemsRow createRow(Map<String, dynamic> data) => ProductItemsRow(data);
}

class ProductItemsRow extends SupabaseDataRow {
  ProductItemsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ProductItemsTable();

  String get productId => getField<String>('product_id')!;
  set productId(String value) => setField<String>('product_id', value);

  String get productName => getField<String>('product_name')!;
  set productName(String value) => setField<String>('product_name', value);

  String get productCategoryId => getField<String>('product_category_id')!;
  set productCategoryId(String value) =>
      setField<String>('product_category_id', value);

  String get productTypeId => getField<String>('product_type_id')!;
  set productTypeId(String value) => setField<String>('product_type_id', value);

  String get farmId => getField<String>('farm_id')!;
  set farmId(String value) => setField<String>('farm_id', value);

  bool get active => getField<bool>('active')!;
  set active(bool value) => setField<bool>('active', value);

  double get costPerUnit => getField<double>('cost_per_unit')!;
  set costPerUnit(double value) => setField<double>('cost_per_unit', value);

  String get unit => getField<String>('unit')!;
  set unit(String value) => setField<String>('unit', value);

  String? get imageUrl => getField<String>('image_url');
  set imageUrl(String? value) => setField<String>('image_url', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  DateTime get updatedAt => getField<DateTime>('updated_at')!;
  set updatedAt(DateTime value) => setField<DateTime>('updated_at', value);

  String get createdByUserId => getField<String>('created_by_user_id')!;
  set createdByUserId(String value) =>
      setField<String>('created_by_user_id', value);

  String get vendorId => getField<String>('vendor_id')!;
  set vendorId(String value) => setField<String>('vendor_id', value);

  double? get initialQuantity => getField<double>('initial_quantity');
  set initialQuantity(double? value) =>
      setField<double>('initial_quantity', value);

  double? get minimumQuantity => getField<double>('minimum_quantity');
  set minimumQuantity(double? value) =>
      setField<double>('minimum_quantity', value);

  bool? get deleteFlag => getField<bool>('delete_flag');
  set deleteFlag(bool? value) => setField<bool>('delete_flag', value);
}
