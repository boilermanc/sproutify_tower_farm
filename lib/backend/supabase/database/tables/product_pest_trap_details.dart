import '../database.dart';

class ProductPestTrapDetailsTable
    extends SupabaseTable<ProductPestTrapDetailsRow> {
  @override
  String get tableName => 'product_pest_trap_details';

  @override
  ProductPestTrapDetailsRow createRow(Map<String, dynamic> data) =>
      ProductPestTrapDetailsRow(data);
}

class ProductPestTrapDetailsRow extends SupabaseDataRow {
  ProductPestTrapDetailsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ProductPestTrapDetailsTable();

  String get productTrapId => getField<String>('product_trap_id')!;
  set productTrapId(String value) => setField<String>('product_trap_id', value);

  String get productId => getField<String>('product_id')!;
  set productId(String value) => setField<String>('product_id', value);

  String get trapType => getField<String>('trap_type')!;
  set trapType(String value) => setField<String>('trap_type', value);

  List<String> get targetPests => getListField<String>('target_pests');
  set targetPests(List<String>? value) =>
      setListField<String>('target_pests', value);

  String? get coverageArea => getField<String>('coverage_area');
  set coverageArea(String? value) => setField<String>('coverage_area', value);

  String? get replacementInterval => getField<String>('replacement_interval');
  set replacementInterval(String? value) =>
      setField<String>('replacement_interval', value);

  String? get mountingType => getField<String>('mounting_type');
  set mountingType(String? value) => setField<String>('mounting_type', value);
}
