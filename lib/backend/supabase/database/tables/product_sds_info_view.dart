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

  dynamic? get activeIngredients => getField<dynamic>('active_ingredients');
  set activeIngredients(dynamic? value) =>
      setField<dynamic>('active_ingredients', value);

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

  double? get recommendedApplicationRate =>
      getField<double>('recommended_application_rate');
  set recommendedApplicationRate(double? value) =>
      setField<double>('recommended_application_rate', value);

  String? get recommendedApplicationRateUnit =>
      getField<String>('recommended_application_rate_unit');
  set recommendedApplicationRateUnit(String? value) =>
      setField<String>('recommended_application_rate_unit', value);

  double? get dilutionRate => getField<double>('dilution_rate');
  set dilutionRate(double? value) => setField<double>('dilution_rate', value);

  String? get dilutionRateUnit => getField<String>('dilution_rate_unit');
  set dilutionRateUnit(String? value) =>
      setField<String>('dilution_rate_unit', value);

  int? get labelReapplicationInterval =>
      getField<int>('label_reapplication_interval');
  set labelReapplicationInterval(int? value) =>
      setField<int>('label_reapplication_interval', value);

  String? get labelReapplicationIntervalUnit =>
      getField<String>('label_reapplication_interval_unit');
  set labelReapplicationIntervalUnit(String? value) =>
      setField<String>('label_reapplication_interval_unit', value);

  dynamic? get applicationSchedules =>
      getField<dynamic>('application_schedules');
  set applicationSchedules(dynamic? value) =>
      setField<dynamic>('application_schedules', value);

  dynamic? get pests => getField<dynamic>('pests');
  set pests(dynamic? value) => setField<dynamic>('pests', value);

  dynamic? get diseases => getField<dynamic>('diseases');
  set diseases(dynamic? value) => setField<dynamic>('diseases', value);

  String? get epaRegNo => getField<String>('epa_reg_no');
  set epaRegNo(String? value) => setField<String>('epa_reg_no', value);

  String? get chemicalCategory => getField<String>('chemical_category');
  set chemicalCategory(String? value) =>
      setField<String>('chemical_category', value);

  String? get fracCode => getField<String>('frac_code');
  set fracCode(String? value) => setField<String>('frac_code', value);

  String? get iracCode => getField<String>('irac_code');
  set iracCode(String? value) => setField<String>('irac_code', value);

  String? get additionalInstructions =>
      getField<String>('additional_instructions');
  set additionalInstructions(String? value) =>
      setField<String>('additional_instructions', value);

  dynamic? get productFeatures => getField<dynamic>('product_features');
  set productFeatures(dynamic? value) =>
      setField<dynamic>('product_features', value);

  String? get sdsManufacturerName => getField<String>('sds_manufacturer_name');
  set sdsManufacturerName(String? value) =>
      setField<String>('sds_manufacturer_name', value);

  String? get sdsSignalWord => getField<String>('sds_signal_word');
  set sdsSignalWord(String? value) =>
      setField<String>('sds_signal_word', value);

  dynamic? get sdsHazardStatements =>
      getField<dynamic>('sds_hazard_statements');
  set sdsHazardStatements(dynamic? value) =>
      setField<dynamic>('sds_hazard_statements', value);

  dynamic? get sdsPrecautionaryStatements =>
      getField<dynamic>('sds_precautionary_statements');
  set sdsPrecautionaryStatements(dynamic? value) =>
      setField<dynamic>('sds_precautionary_statements', value);

  dynamic? get sdsFirstAidMeasures =>
      getField<dynamic>('sds_first_aid_measures');
  set sdsFirstAidMeasures(dynamic? value) =>
      setField<dynamic>('sds_first_aid_measures', value);

  dynamic? get requiredPpe => getField<dynamic>('required_ppe');
  set requiredPpe(dynamic? value) => setField<dynamic>('required_ppe', value);

  dynamic? get safetyPrecautions => getField<dynamic>('safety_precautions');
  set safetyPrecautions(dynamic? value) =>
      setField<dynamic>('safety_precautions', value);

  dynamic? get dosingRates => getField<dynamic>('dosing_rates');
  set dosingRates(dynamic? value) => setField<dynamic>('dosing_rates', value);

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
