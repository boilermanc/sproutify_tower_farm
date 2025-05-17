import '../database.dart';

class ProductLabelExtractedDataTable
    extends SupabaseTable<ProductLabelExtractedDataRow> {
  @override
  String get tableName => 'product_label_extracted_data';

  @override
  ProductLabelExtractedDataRow createRow(Map<String, dynamic> data) =>
      ProductLabelExtractedDataRow(data);
}

class ProductLabelExtractedDataRow extends SupabaseDataRow {
  ProductLabelExtractedDataRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ProductLabelExtractedDataTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get productItemId => getField<String>('product_item_id');
  set productItemId(String? value) =>
      setField<String>('product_item_id', value);

  String? get productName => getField<String>('product_name');
  set productName(String? value) => setField<String>('product_name', value);

  String? get labelText => getField<String>('label_text');
  set labelText(String? value) => setField<String>('label_text', value);

  dynamic? get applicationMethods => getField<dynamic>('application_methods');
  set applicationMethods(dynamic? value) =>
      setField<dynamic>('application_methods', value);

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

  int? get reapplicationInterval => getField<int>('reapplication_interval');
  set reapplicationInterval(int? value) =>
      setField<int>('reapplication_interval', value);

  String? get reapplicationIntervalUnit =>
      getField<String>('reapplication_interval_unit');
  set reapplicationIntervalUnit(String? value) =>
      setField<String>('reapplication_interval_unit', value);

  int? get preHarvestInterval => getField<int>('pre_harvest_interval');
  set preHarvestInterval(int? value) =>
      setField<int>('pre_harvest_interval', value);

  String? get preHarvestIntervalUnit =>
      getField<String>('pre_harvest_interval_unit');
  set preHarvestIntervalUnit(String? value) =>
      setField<String>('pre_harvest_interval_unit', value);

  String? get additionalInstructions =>
      getField<String>('additional_instructions');
  set additionalInstructions(String? value) =>
      setField<String>('additional_instructions', value);

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

  bool? get omriCertified => getField<bool>('omri_certified');
  set omriCertified(bool? value) => setField<bool>('omri_certified', value);

  String? get chemicalCategory => getField<String>('chemical_category');
  set chemicalCategory(String? value) =>
      setField<String>('chemical_category', value);

  String? get fracCode => getField<String>('frac_code');
  set fracCode(String? value) => setField<String>('frac_code', value);

  String? get iracCode => getField<String>('irac_code');
  set iracCode(String? value) => setField<String>('irac_code', value);

  String? get processingStatus => getField<String>('processing_status');
  set processingStatus(String? value) =>
      setField<String>('processing_status', value);

  dynamic? get activeIngredients => getField<dynamic>('active_ingredients');
  set activeIngredients(dynamic? value) =>
      setField<dynamic>('active_ingredients', value);

  String? get concentration => getField<String>('concentration');
  set concentration(String? value) => setField<String>('concentration', value);

  dynamic? get safetyPrecautions => getField<dynamic>('safety_precautions');
  set safetyPrecautions(dynamic? value) =>
      setField<dynamic>('safety_precautions', value);

  dynamic? get ppeRequirements => getField<dynamic>('ppe_requirements');
  set ppeRequirements(dynamic? value) =>
      setField<dynamic>('ppe_requirements', value);

  dynamic? get productFeatures => getField<dynamic>('product_features');
  set productFeatures(dynamic? value) =>
      setField<dynamic>('product_features', value);

  int? get restrictedEntryInterval =>
      getField<int>('restricted_entry_interval');
  set restrictedEntryInterval(int? value) =>
      setField<int>('restricted_entry_interval', value);

  String? get restrictedEntryIntervalUnit =>
      getField<String>('restricted_entry_interval_unit');
  set restrictedEntryIntervalUnit(String? value) =>
      setField<String>('restricted_entry_interval_unit', value);
}
