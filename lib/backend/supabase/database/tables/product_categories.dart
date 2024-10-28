import '../database.dart';

class ProductCategoriesTable extends SupabaseTable<ProductCategoriesRow> {
  @override
  String get tableName => 'product_categories';

  @override
  ProductCategoriesRow createRow(Map<String, dynamic> data) =>
      ProductCategoriesRow(data);
}

class ProductCategoriesRow extends SupabaseDataRow {
  ProductCategoriesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ProductCategoriesTable();

  String get productCategoryId => getField<String>('product_category_id')!;
  set productCategoryId(String value) =>
      setField<String>('product_category_id', value);

  String get categoryName => getField<String>('category_name')!;
  set categoryName(String value) => setField<String>('category_name', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);
}
