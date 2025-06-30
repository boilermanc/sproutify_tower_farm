import '../database.dart';

class ProductPestCatalogTable extends SupabaseTable<ProductPestCatalogRow> {
  @override
  String get tableName => 'product_pest_catalog';

  @override
  ProductPestCatalogRow createRow(Map<String, dynamic> data) =>
      ProductPestCatalogRow(data);
}

class ProductPestCatalogRow extends SupabaseDataRow {
  ProductPestCatalogRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ProductPestCatalogTable();

  String? get productId => getField<String>('product_id');
  set productId(String? value) => setField<String>('product_id', value);

  String? get productCategoryId => getField<String>('product_category_id');
  set productCategoryId(String? value) =>
      setField<String>('product_category_id', value);

  String? get productTypeId => getField<String>('product_type_id');
  set productTypeId(String? value) =>
      setField<String>('product_type_id', value);

  String? get productName => getField<String>('product_name');
  set productName(String? value) => setField<String>('product_name', value);

  String? get productTypeName => getField<String>('product_type_name');
  set productTypeName(String? value) =>
      setField<String>('product_type_name', value);

  String? get imageUrl => getField<String>('image_url');
  set imageUrl(String? value) => setField<String>('image_url', value);

  bool? get omriRated => getField<bool>('omri_rated');
  set omriRated(bool? value) => setField<bool>('omri_rated', value);
}
