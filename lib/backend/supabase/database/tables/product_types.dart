import '../database.dart';

class ProductTypesTable extends SupabaseTable<ProductTypesRow> {
  @override
  String get tableName => 'product_types';

  @override
  ProductTypesRow createRow(Map<String, dynamic> data) => ProductTypesRow(data);
}

class ProductTypesRow extends SupabaseDataRow {
  ProductTypesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ProductTypesTable();

  String get productTypeId => getField<String>('product_type_id')!;
  set productTypeId(String value) => setField<String>('product_type_id', value);

  String get typeName => getField<String>('type_name')!;
  set typeName(String value) => setField<String>('type_name', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  String get productCategoryId => getField<String>('product_category_id')!;
  set productCategoryId(String value) =>
      setField<String>('product_category_id', value);

  bool get isActive => getField<bool>('is_active')!;
  set isActive(bool value) => setField<bool>('is_active', value);
}
