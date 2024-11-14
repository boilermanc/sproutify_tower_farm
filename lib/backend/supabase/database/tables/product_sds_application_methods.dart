import '../database.dart';

class ProductSdsApplicationMethodsTable
    extends SupabaseTable<ProductSdsApplicationMethodsRow> {
  @override
  String get tableName => 'product_sds_application_methods';

  @override
  ProductSdsApplicationMethodsRow createRow(Map<String, dynamic> data) =>
      ProductSdsApplicationMethodsRow(data);
}

class ProductSdsApplicationMethodsRow extends SupabaseDataRow {
  ProductSdsApplicationMethodsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ProductSdsApplicationMethodsTable();

  String get sdsId => getField<String>('sds_id')!;
  set sdsId(String value) => setField<String>('sds_id', value);

  String get methodId => getField<String>('method_id')!;
  set methodId(String value) => setField<String>('method_id', value);
}
