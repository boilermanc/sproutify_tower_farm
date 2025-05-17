import '../database.dart';

class ProductStagingTable extends SupabaseTable<ProductStagingRow> {
  @override
  String get tableName => 'product_staging';

  @override
  ProductStagingRow createRow(Map<String, dynamic> data) =>
      ProductStagingRow(data);
}

class ProductStagingRow extends SupabaseDataRow {
  ProductStagingRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ProductStagingTable();

  String get stagingId => getField<String>('staging_id')!;
  set stagingId(String value) => setField<String>('staging_id', value);

  String? get productItemId => getField<String>('product_item_id');
  set productItemId(String? value) =>
      setField<String>('product_item_id', value);

  String? get productName => getField<String>('product_name');
  set productName(String? value) => setField<String>('product_name', value);

  String? get labelText => getField<String>('label_text');
  set labelText(String? value) => setField<String>('label_text', value);

  String? get sdsText => getField<String>('sds_text');
  set sdsText(String? value) => setField<String>('sds_text', value);

  String? get sdsRevisionDate => getField<String>('sds_revision_date');
  set sdsRevisionDate(String? value) =>
      setField<String>('sds_revision_date', value);

  dynamic? get activeIngredients => getField<dynamic>('active_ingredients');
  set activeIngredients(dynamic? value) =>
      setField<dynamic>('active_ingredients', value);

  dynamic? get applicationMethods => getField<dynamic>('application_methods');
  set applicationMethods(dynamic? value) =>
      setField<dynamic>('application_methods', value);

  dynamic? get dosingInfo => getField<dynamic>('dosing_info');
  set dosingInfo(dynamic? value) => setField<dynamic>('dosing_info', value);

  dynamic? get safetyInfo => getField<dynamic>('safety_info');
  set safetyInfo(dynamic? value) => setField<dynamic>('safety_info', value);

  DateTime? get labelUpdatedAt => getField<DateTime>('label_updated_at');
  set labelUpdatedAt(DateTime? value) =>
      setField<DateTime>('label_updated_at', value);

  DateTime? get sdsUpdatedAt => getField<DateTime>('sds_updated_at');
  set sdsUpdatedAt(DateTime? value) =>
      setField<DateTime>('sds_updated_at', value);

  bool? get processed => getField<bool>('processed');
  set processed(bool? value) => setField<bool>('processed', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
