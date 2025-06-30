import '../database.dart';

class ProductSafetyAllItemsTable
    extends SupabaseTable<ProductSafetyAllItemsRow> {
  @override
  String get tableName => 'product_safety_all_items';

  @override
  ProductSafetyAllItemsRow createRow(Map<String, dynamic> data) =>
      ProductSafetyAllItemsRow(data);
}

class ProductSafetyAllItemsRow extends SupabaseDataRow {
  ProductSafetyAllItemsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ProductSafetyAllItemsTable();

  String? get productItemId => getField<String>('product_item_id');
  set productItemId(String? value) =>
      setField<String>('product_item_id', value);

  String? get safetyType => getField<String>('safety_type');
  set safetyType(String? value) => setField<String>('safety_type', value);

  String? get safetyItem => getField<String>('safety_item');
  set safetyItem(String? value) => setField<String>('safety_item', value);

  int? get sortOrder => getField<int>('sort_order');
  set sortOrder(int? value) => setField<int>('sort_order', value);
}
