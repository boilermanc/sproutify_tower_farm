import '../database.dart';

class ProductSafetyPrecautionsTable
    extends SupabaseTable<ProductSafetyPrecautionsRow> {
  @override
  String get tableName => 'product_safety_precautions';

  @override
  ProductSafetyPrecautionsRow createRow(Map<String, dynamic> data) =>
      ProductSafetyPrecautionsRow(data);
}

class ProductSafetyPrecautionsRow extends SupabaseDataRow {
  ProductSafetyPrecautionsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ProductSafetyPrecautionsTable();

  String get productId => getField<String>('product_id')!;
  set productId(String value) => setField<String>('product_id', value);

  String get precautionId => getField<String>('precaution_id')!;
  set precautionId(String value) => setField<String>('precaution_id', value);
}
