import '../database.dart';

class ProductSafetyPrecautionsListTable
    extends SupabaseTable<ProductSafetyPrecautionsListRow> {
  @override
  String get tableName => 'product_safety_precautions_list';

  @override
  ProductSafetyPrecautionsListRow createRow(Map<String, dynamic> data) =>
      ProductSafetyPrecautionsListRow(data);
}

class ProductSafetyPrecautionsListRow extends SupabaseDataRow {
  ProductSafetyPrecautionsListRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ProductSafetyPrecautionsListTable();

  String? get productItemId => getField<String>('product_item_id');
  set productItemId(String? value) =>
      setField<String>('product_item_id', value);

  String? get safetyType => getField<String>('safety_type');
  set safetyType(String? value) => setField<String>('safety_type', value);

  String? get safetyItem => getField<String>('safety_item');
  set safetyItem(String? value) => setField<String>('safety_item', value);
}
