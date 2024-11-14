import '../database.dart';

class ProductSdsTable extends SupabaseTable<ProductSdsRow> {
  @override
  String get tableName => 'product_sds';

  @override
  ProductSdsRow createRow(Map<String, dynamic> data) => ProductSdsRow(data);
}

class ProductSdsRow extends SupabaseDataRow {
  ProductSdsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ProductSdsTable();

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);

  String get path => getField<String>('path')!;
  set path(String value) => setField<String>('path', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get labelPath => getField<String>('label_path');
  set labelPath(String? value) => setField<String>('label_path', value);

  bool? get omriCertified => getField<bool>('omri_certified');
  set omriCertified(bool? value) => setField<bool>('omri_certified', value);

  List<String> get activeIngredients =>
      getListField<String>('active_ingredients');
  set activeIngredients(List<String>? value) =>
      setListField<String>('active_ingredients', value);

  String? get reEntryInterval => getField<String>('re_entry_interval');
  set reEntryInterval(String? value) =>
      setField<String>('re_entry_interval', value);

  String? get preHarvestInterval => getField<String>('pre_harvest_interval');
  set preHarvestInterval(String? value) =>
      setField<String>('pre_harvest_interval', value);

  String? get productTypeId => getField<String>('product_type_id');
  set productTypeId(String? value) =>
      setField<String>('product_type_id', value);

  String? get dosingInterval => getField<String>('dosing_interval');
  set dosingInterval(String? value) =>
      setField<String>('dosing_interval', value);

  int? get dosingIntervalNormal => getField<int>('dosing_interval_normal');
  set dosingIntervalNormal(int? value) =>
      setField<int>('dosing_interval_normal', value);

  int? get dosingIntervalExtreme => getField<int>('dosing_interval_extreme');
  set dosingIntervalExtreme(int? value) =>
      setField<int>('dosing_interval_extreme', value);

  String? get dosingIntervalNormalUnit =>
      getField<String>('dosing_interval_normal_unit');
  set dosingIntervalNormalUnit(String? value) =>
      setField<String>('dosing_interval_normal_unit', value);

  String? get dosingIntervalExtremeUnit =>
      getField<String>('dosing_interval_extreme_unit');
  set dosingIntervalExtremeUnit(String? value) =>
      setField<String>('dosing_interval_extreme_unit', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);
}
