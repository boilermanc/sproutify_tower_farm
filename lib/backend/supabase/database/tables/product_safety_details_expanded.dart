import '../database.dart';

class ProductSafetyDetailsExpandedTable
    extends SupabaseTable<ProductSafetyDetailsExpandedRow> {
  @override
  String get tableName => 'product_safety_details_expanded';

  @override
  ProductSafetyDetailsExpandedRow createRow(Map<String, dynamic> data) =>
      ProductSafetyDetailsExpandedRow(data);
}

class ProductSafetyDetailsExpandedRow extends SupabaseDataRow {
  ProductSafetyDetailsExpandedRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ProductSafetyDetailsExpandedTable();

  String? get sdsId => getField<String>('sds_id');
  set sdsId(String? value) => setField<String>('sds_id', value);

  String? get productName => getField<String>('product_name');
  set productName(String? value) => setField<String>('product_name', value);

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

  String? get hazardStatements => getField<String>('hazard_statements');
  set hazardStatements(String? value) =>
      setField<String>('hazard_statements', value);

  String? get firstAidMeasures => getField<String>('first_aid_measures');
  set firstAidMeasures(String? value) =>
      setField<String>('first_aid_measures', value);

  String? get additionalGuidance => getField<String>('additional_guidance');
  set additionalGuidance(String? value) =>
      setField<String>('additional_guidance', value);

  String? get precautionaryStatement =>
      getField<String>('precautionary_statement');
  set precautionaryStatement(String? value) =>
      setField<String>('precautionary_statement', value);

  String? get requiredEquipment => getField<String>('required_equipment');
  set requiredEquipment(String? value) =>
      setField<String>('required_equipment', value);

  String? get dosingInterval => getField<String>('dosing_interval');
  set dosingInterval(String? value) =>
      setField<String>('dosing_interval', value);

  double? get minimumDilution => getField<double>('minimum_dilution');
  set minimumDilution(double? value) =>
      setField<double>('minimum_dilution', value);

  double? get maximumDilution => getField<double>('maximum_dilution');
  set maximumDilution(double? value) =>
      setField<double>('maximum_dilution', value);

  String? get applicationMethods => getField<String>('application_methods');
  set applicationMethods(String? value) =>
      setField<String>('application_methods', value);

  String? get notes => getField<String>('notes');
  set notes(String? value) => setField<String>('notes', value);
}
