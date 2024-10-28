import '../database.dart';

class ProductChemicalDetailsTable
    extends SupabaseTable<ProductChemicalDetailsRow> {
  @override
  String get tableName => 'product_chemical_details';

  @override
  ProductChemicalDetailsRow createRow(Map<String, dynamic> data) =>
      ProductChemicalDetailsRow(data);
}

class ProductChemicalDetailsRow extends SupabaseDataRow {
  ProductChemicalDetailsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ProductChemicalDetailsTable();

  String get productChemicalId => getField<String>('product_chemical_id')!;
  set productChemicalId(String value) =>
      setField<String>('product_chemical_id', value);

  String get productId => getField<String>('product_id')!;
  set productId(String value) => setField<String>('product_id', value);

  String? get msdsUrl => getField<String>('msds_url');
  set msdsUrl(String? value) => setField<String>('msds_url', value);

  String? get reEntryInterval => getField<String>('re_entry_interval');
  set reEntryInterval(String? value) =>
      setField<String>('re_entry_interval', value);

  String? get preHarvestInterval => getField<String>('pre_harvest_interval');
  set preHarvestInterval(String? value) =>
      setField<String>('pre_harvest_interval', value);

  List<String> get activeIngredients =>
      getListField<String>('active_ingredients');
  set activeIngredients(List<String>? value) =>
      setListField<String>('active_ingredients', value);

  String? get applicationMethod => getField<String>('application_method');
  set applicationMethod(String? value) =>
      setField<String>('application_method', value);
}
