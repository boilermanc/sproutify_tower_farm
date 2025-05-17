import '../database.dart';

class SdsExtractedDataTable extends SupabaseTable<SdsExtractedDataRow> {
  @override
  String get tableName => 'sds_extracted_data';

  @override
  SdsExtractedDataRow createRow(Map<String, dynamic> data) =>
      SdsExtractedDataRow(data);
}

class SdsExtractedDataRow extends SupabaseDataRow {
  SdsExtractedDataRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SdsExtractedDataTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get productItemId => getField<String>('product_item_id');
  set productItemId(String? value) =>
      setField<String>('product_item_id', value);

  String? get sdsProductName => getField<String>('sds_product_name');
  set sdsProductName(String? value) =>
      setField<String>('sds_product_name', value);

  String? get sdsManufacturerName => getField<String>('sds_manufacturer_name');
  set sdsManufacturerName(String? value) =>
      setField<String>('sds_manufacturer_name', value);

  String? get sdsRevisionDate => getField<String>('sds_revision_date');
  set sdsRevisionDate(String? value) =>
      setField<String>('sds_revision_date', value);

  String? get sdsDescriptionUse => getField<String>('sds_description_use');
  set sdsDescriptionUse(String? value) =>
      setField<String>('sds_description_use', value);

  String? get sdsSignalWord => getField<String>('sds_signal_word');
  set sdsSignalWord(String? value) =>
      setField<String>('sds_signal_word', value);

  dynamic? get sdsActiveIngredients =>
      getField<dynamic>('sds_active_ingredients');
  set sdsActiveIngredients(dynamic? value) =>
      setField<dynamic>('sds_active_ingredients', value);

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

  dynamic? get sdsRequiredPpe => getField<dynamic>('sds_required_ppe');
  set sdsRequiredPpe(dynamic? value) =>
      setField<dynamic>('sds_required_ppe', value);

  int? get sdsReEntryInterval => getField<int>('sds_re_entry_interval');
  set sdsReEntryInterval(int? value) =>
      setField<int>('sds_re_entry_interval', value);

  int? get sdsPreHarvestInterval => getField<int>('sds_pre_harvest_interval');
  set sdsPreHarvestInterval(int? value) =>
      setField<int>('sds_pre_harvest_interval', value);

  String? get rawSdsText => getField<String>('raw_sds_text');
  set rawSdsText(String? value) => setField<String>('raw_sds_text', value);

  String? get sdsReEntryIntervalUnit =>
      getField<String>('sds_re_entry_interval_unit');
  set sdsReEntryIntervalUnit(String? value) =>
      setField<String>('sds_re_entry_interval_unit', value);

  String? get sdsPreHarvestIntervalUnit =>
      getField<String>('sds_pre_harvest_interval_unit');
  set sdsPreHarvestIntervalUnit(String? value) =>
      setField<String>('sds_pre_harvest_interval_unit', value);

  dynamic? get sdsHazardClassification =>
      getField<dynamic>('sds_hazard_classification');
  set sdsHazardClassification(dynamic? value) =>
      setField<dynamic>('sds_hazard_classification', value);

  String? get processingStatus => getField<String>('processing_status');
  set processingStatus(String? value) =>
      setField<String>('processing_status', value);

  String? get sdsFracCode => getField<String>('sds_frac_code');
  set sdsFracCode(String? value) => setField<String>('sds_frac_code', value);

  String? get sdsIracCode => getField<String>('sds_irac_code');
  set sdsIracCode(String? value) => setField<String>('sds_irac_code', value);
}
