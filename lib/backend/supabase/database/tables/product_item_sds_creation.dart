import '../database.dart';

class ProductItemSdsCreationTable
    extends SupabaseTable<ProductItemSdsCreationRow> {
  @override
  String get tableName => 'product_item_sds_creation';

  @override
  ProductItemSdsCreationRow createRow(Map<String, dynamic> data) =>
      ProductItemSdsCreationRow(data);
}

class ProductItemSdsCreationRow extends SupabaseDataRow {
  ProductItemSdsCreationRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ProductItemSdsCreationTable();

  String? get productItemId => getField<String>('product_item_id');
  set productItemId(String? value) =>
      setField<String>('product_item_id', value);

  String? get labelExtractedDataId =>
      getField<String>('label_extracted_data_id');
  set labelExtractedDataId(String? value) =>
      setField<String>('label_extracted_data_id', value);

  String? get labelProductName => getField<String>('label_product_name');
  set labelProductName(String? value) =>
      setField<String>('label_product_name', value);

  String? get sdsExtractedDataId => getField<String>('sds_extracted_data_id');
  set sdsExtractedDataId(String? value) =>
      setField<String>('sds_extracted_data_id', value);

  String? get sdsProductName => getField<String>('sds_product_name');
  set sdsProductName(String? value) =>
      setField<String>('sds_product_name', value);
}
