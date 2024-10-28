import '../database.dart';

class ProductGrowingMediumDetailsTable
    extends SupabaseTable<ProductGrowingMediumDetailsRow> {
  @override
  String get tableName => 'product_growing_medium_details';

  @override
  ProductGrowingMediumDetailsRow createRow(Map<String, dynamic> data) =>
      ProductGrowingMediumDetailsRow(data);
}

class ProductGrowingMediumDetailsRow extends SupabaseDataRow {
  ProductGrowingMediumDetailsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ProductGrowingMediumDetailsTable();

  String get productGrowingMediumId =>
      getField<String>('product_growing_medium_id')!;
  set productGrowingMediumId(String value) =>
      setField<String>('product_growing_medium_id', value);

  String get productId => getField<String>('product_id')!;
  set productId(String value) => setField<String>('product_id', value);

  String? get composition => getField<String>('composition');
  set composition(String? value) => setField<String>('composition', value);

  double? get phValue => getField<double>('ph_value');
  set phValue(double? value) => setField<double>('ph_value', value);

  String? get drainageRating => getField<String>('drainage_rating');
  set drainageRating(String? value) =>
      setField<String>('drainage_rating', value);
}
