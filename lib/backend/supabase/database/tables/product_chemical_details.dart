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

  String? get notes => getField<String>('notes');
  set notes(String? value) => setField<String>('notes', value);

  String? get sdsId => getField<String>('sds_id');
  set sdsId(String? value) => setField<String>('sds_id', value);

  String? get labelPath => getField<String>('label_path');
  set labelPath(String? value) => setField<String>('label_path', value);

  bool get noSdsEntry => getField<bool>('no_sds_entry')!;
  set noSdsEntry(bool value) => setField<bool>('no_sds_entry', value);

  bool get omriRated => getField<bool>('omri_rated')!;
  set omriRated(bool value) => setField<bool>('omri_rated', value);

  bool get isCustom => getField<bool>('is_custom')!;
  set isCustom(bool value) => setField<bool>('is_custom', value);

  String get farmId => getField<String>('farm_id')!;
  set farmId(String value) => setField<String>('farm_id', value);

  DateTime get updatedAt => getField<DateTime>('updated_at')!;
  set updatedAt(DateTime value) => setField<DateTime>('updated_at', value);

  String? get imageUrl => getField<String>('image_url');
  set imageUrl(String? value) => setField<String>('image_url', value);
}
