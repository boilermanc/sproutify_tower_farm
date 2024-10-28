import '../database.dart';

class ProductCleaningSupplyDetailsTable
    extends SupabaseTable<ProductCleaningSupplyDetailsRow> {
  @override
  String get tableName => 'product_cleaning_supply_details';

  @override
  ProductCleaningSupplyDetailsRow createRow(Map<String, dynamic> data) =>
      ProductCleaningSupplyDetailsRow(data);
}

class ProductCleaningSupplyDetailsRow extends SupabaseDataRow {
  ProductCleaningSupplyDetailsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ProductCleaningSupplyDetailsTable();

  String get productCleaningSupplyId =>
      getField<String>('product_cleaning_supply_id')!;
  set productCleaningSupplyId(String value) =>
      setField<String>('product_cleaning_supply_id', value);

  String get productId => getField<String>('product_id')!;
  set productId(String value) => setField<String>('product_id', value);

  String? get msdsUrl => getField<String>('msds_url');
  set msdsUrl(String? value) => setField<String>('msds_url', value);

  String? get dilutionRatio => getField<String>('dilution_ratio');
  set dilutionRatio(String? value) => setField<String>('dilution_ratio', value);

  List<String> get surfaceCompatibility =>
      getListField<String>('surface_compatibility');
  set surfaceCompatibility(List<String>? value) =>
      setListField<String>('surface_compatibility', value);
}
