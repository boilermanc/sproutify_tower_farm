import '../database.dart';

class ProductSafetyInfoTable extends SupabaseTable<ProductSafetyInfoRow> {
  @override
  String get tableName => 'product_safety_info';

  @override
  ProductSafetyInfoRow createRow(Map<String, dynamic> data) =>
      ProductSafetyInfoRow(data);
}

class ProductSafetyInfoRow extends SupabaseDataRow {
  ProductSafetyInfoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ProductSafetyInfoTable();

  String get infoId => getField<String>('info_id')!;
  set infoId(String value) => setField<String>('info_id', value);

  String get sdsId => getField<String>('sds_id')!;
  set sdsId(String value) => setField<String>('sds_id', value);

  String? get hazardStatements => getField<String>('hazard_statements');
  set hazardStatements(String? value) =>
      setField<String>('hazard_statements', value);

  dynamic? get precautionaryStatements =>
      getField<dynamic>('precautionary_statements');
  set precautionaryStatements(dynamic? value) =>
      setField<dynamic>('precautionary_statements', value);

  String? get firstAidMeasures => getField<String>('first_aid_measures');
  set firstAidMeasures(String? value) =>
      setField<String>('first_aid_measures', value);

  String? get additionalGuidance => getField<String>('additional_guidance');
  set additionalGuidance(String? value) =>
      setField<String>('additional_guidance', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  dynamic? get requiredEquipment => getField<dynamic>('required_equipment');
  set requiredEquipment(dynamic? value) =>
      setField<dynamic>('required_equipment', value);
}
