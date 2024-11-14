import '../database.dart';

class ProductDosingRatesViewTable
    extends SupabaseTable<ProductDosingRatesViewRow> {
  @override
  String get tableName => 'product_dosing_rates_view';

  @override
  ProductDosingRatesViewRow createRow(Map<String, dynamic> data) =>
      ProductDosingRatesViewRow(data);
}

class ProductDosingRatesViewRow extends SupabaseDataRow {
  ProductDosingRatesViewRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ProductDosingRatesViewTable();

  String? get dosingId => getField<String>('dosing_id');
  set dosingId(String? value) => setField<String>('dosing_id', value);

  String? get productSdsId => getField<String>('product_sds_id');
  set productSdsId(String? value) => setField<String>('product_sds_id', value);

  String? get productName => getField<String>('product_name');
  set productName(String? value) => setField<String>('product_name', value);

  String? get productPath => getField<String>('product_path');
  set productPath(String? value) => setField<String>('product_path', value);

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

  double? get baseAmount => getField<double>('base_amount');
  set baseAmount(double? value) => setField<double>('base_amount', value);

  double? get perVolume => getField<double>('per_volume');
  set perVolume(double? value) => setField<double>('per_volume', value);

  double? get standardDoseGallon => getField<double>('standard_dose_gallon');
  set standardDoseGallon(double? value) =>
      setField<double>('standard_dose_gallon', value);

  String? get standardDoseGallonUnit =>
      getField<String>('standard_dose_gallon_unit');
  set standardDoseGallonUnit(String? value) =>
      setField<String>('standard_dose_gallon_unit', value);

  double? get standardDoseQuart => getField<double>('standard_dose_quart');
  set standardDoseQuart(double? value) =>
      setField<double>('standard_dose_quart', value);

  String? get standardDoseQuartUnit =>
      getField<String>('standard_dose_quart_unit');
  set standardDoseQuartUnit(String? value) =>
      setField<String>('standard_dose_quart_unit', value);

  double? get standardDoseLiter => getField<double>('standard_dose_liter');
  set standardDoseLiter(double? value) =>
      setField<double>('standard_dose_liter', value);

  String? get standardDoseLiterUnit =>
      getField<String>('standard_dose_liter_unit');
  set standardDoseLiterUnit(String? value) =>
      setField<String>('standard_dose_liter_unit', value);

  double? get standardDoseGallonOunces =>
      getField<double>('standard_dose_gallon_ounces');
  set standardDoseGallonOunces(double? value) =>
      setField<double>('standard_dose_gallon_ounces', value);

  String? get standardDoseGallonOuncesUnit =>
      getField<String>('standard_dose_gallon_ounces_unit');
  set standardDoseGallonOuncesUnit(String? value) =>
      setField<String>('standard_dose_gallon_ounces_unit', value);

  double? get standardDoseQuartOunces =>
      getField<double>('standard_dose_quart_ounces');
  set standardDoseQuartOunces(double? value) =>
      setField<double>('standard_dose_quart_ounces', value);

  String? get standardDoseQuartOuncesUnit =>
      getField<String>('standard_dose_quart_ounces_unit');
  set standardDoseQuartOuncesUnit(String? value) =>
      setField<String>('standard_dose_quart_ounces_unit', value);

  double? get standardDoseLiterOunces =>
      getField<double>('standard_dose_liter_ounces');
  set standardDoseLiterOunces(double? value) =>
      setField<double>('standard_dose_liter_ounces', value);

  String? get standardDoseLiterOuncesUnit =>
      getField<String>('standard_dose_liter_ounces_unit');
  set standardDoseLiterOuncesUnit(String? value) =>
      setField<String>('standard_dose_liter_ounces_unit', value);

  double? get minimumDilution => getField<double>('minimum_dilution');
  set minimumDilution(double? value) =>
      setField<double>('minimum_dilution', value);

  double? get maximumDilution => getField<double>('maximum_dilution');
  set maximumDilution(double? value) =>
      setField<double>('maximum_dilution', value);

  String? get notes => getField<String>('notes');
  set notes(String? value) => setField<String>('notes', value);

  String? get dosingInterval => getField<String>('dosing_interval');
  set dosingInterval(String? value) =>
      setField<String>('dosing_interval', value);

  int? get dosingIntervalNormal => getField<int>('dosing_interval_normal');
  set dosingIntervalNormal(int? value) =>
      setField<int>('dosing_interval_normal', value);

  String? get dosingIntervalNormalUnit =>
      getField<String>('dosing_interval_normal_unit');
  set dosingIntervalNormalUnit(String? value) =>
      setField<String>('dosing_interval_normal_unit', value);

  int? get dosingIntervalExtreme => getField<int>('dosing_interval_extreme');
  set dosingIntervalExtreme(int? value) =>
      setField<int>('dosing_interval_extreme', value);

  String? get dosingIntervalExtremeUnit =>
      getField<String>('dosing_interval_extreme_unit');
  set dosingIntervalExtremeUnit(String? value) =>
      setField<String>('dosing_interval_extreme_unit', value);

  String? get applicationMethods => getField<String>('application_methods');
  set applicationMethods(String? value) =>
      setField<String>('application_methods', value);
}
