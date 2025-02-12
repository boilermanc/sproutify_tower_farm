import '../database.dart';

class ProductSdsInfoViewTable extends SupabaseTable<ProductSdsInfoViewRow> {
  @override
  String get tableName => 'product_sds_info_view';

  @override
  ProductSdsInfoViewRow createRow(Map<String, dynamic> data) =>
      ProductSdsInfoViewRow(data);
}

class ProductSdsInfoViewRow extends SupabaseDataRow {
  ProductSdsInfoViewRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ProductSdsInfoViewTable();

  String? get productSdsId => getField<String>('product_sds_id');
  set productSdsId(String? value) => setField<String>('product_sds_id', value);

  String? get productName => getField<String>('product_name');
  set productName(String? value) => setField<String>('product_name', value);

  String? get sdsPath => getField<String>('sds_path');
  set sdsPath(String? value) => setField<String>('sds_path', value);

  String? get labelPath => getField<String>('label_path');
  set labelPath(String? value) => setField<String>('label_path', value);

  List<String> get activeIngredients =>
      getListField<String>('active_ingredients');
  set activeIngredients(List<String>? value) =>
      setListField<String>('active_ingredients', value);

  bool? get omriCertified => getField<bool>('omri_certified');
  set omriCertified(bool? value) => setField<bool>('omri_certified', value);

  String? get reEntryInterval => getField<String>('re_entry_interval');
  set reEntryInterval(String? value) =>
      setField<String>('re_entry_interval', value);

  String? get preHarvestInterval => getField<String>('pre_harvest_interval');
  set preHarvestInterval(String? value) =>
      setField<String>('pre_harvest_interval', value);

  String? get productTypeId => getField<String>('product_type_id');
  set productTypeId(String? value) =>
      setField<String>('product_type_id', value);

  String? get productApplicationMethods =>
      getField<String>('product_application_methods');
  set productApplicationMethods(String? value) =>
      setField<String>('product_application_methods', value);

  String? get dosingId => getField<String>('dosing_id');
  set dosingId(String? value) => setField<String>('dosing_id', value);

  double? get baseAmount => getField<double>('base_amount');
  set baseAmount(double? value) => setField<double>('base_amount', value);

  String? get baseUnit => getField<String>('base_unit');
  set baseUnit(String? value) => setField<String>('base_unit', value);

  double? get perVolume => getField<double>('per_volume');
  set perVolume(double? value) => setField<double>('per_volume', value);

  String? get volumeUnit => getField<String>('volume_unit');
  set volumeUnit(String? value) => setField<String>('volume_unit', value);

  double? get minimumDilution => getField<double>('minimum_dilution');
  set minimumDilution(double? value) =>
      setField<double>('minimum_dilution', value);

  double? get maximumDilution => getField<double>('maximum_dilution');
  set maximumDilution(double? value) =>
      setField<double>('maximum_dilution', value);

  String? get cropStage => getField<String>('crop_stage');
  set cropStage(String? value) => setField<String>('crop_stage', value);

  String? get dosingNotes => getField<String>('dosing_notes');
  set dosingNotes(String? value) => setField<String>('dosing_notes', value);

  String? get scenario => getField<String>('scenario');
  set scenario(String? value) => setField<String>('scenario', value);

  int? get intervalNormal => getField<int>('interval_normal');
  set intervalNormal(int? value) => setField<int>('interval_normal', value);

  String? get intervalNormalUnit => getField<String>('interval_normal_unit');
  set intervalNormalUnit(String? value) =>
      setField<String>('interval_normal_unit', value);

  int? get intervalExtreme => getField<int>('interval_extreme');
  set intervalExtreme(int? value) => setField<int>('interval_extreme', value);

  String? get intervalExtremeUnit => getField<String>('interval_extreme_unit');
  set intervalExtremeUnit(String? value) =>
      setField<String>('interval_extreme_unit', value);

  String? get timingNotes => getField<String>('timing_notes');
  set timingNotes(String? value) => setField<String>('timing_notes', value);
}
