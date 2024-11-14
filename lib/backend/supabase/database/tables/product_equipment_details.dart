import '../database.dart';

class ProductEquipmentDetailsTable
    extends SupabaseTable<ProductEquipmentDetailsRow> {
  @override
  String get tableName => 'product_equipment_details';

  @override
  ProductEquipmentDetailsRow createRow(Map<String, dynamic> data) =>
      ProductEquipmentDetailsRow(data);
}

class ProductEquipmentDetailsRow extends SupabaseDataRow {
  ProductEquipmentDetailsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ProductEquipmentDetailsTable();

  String? get sdsId => getField<String>('sds_id');
  set sdsId(String? value) => setField<String>('sds_id', value);

  String? get statement => getField<String>('statement');
  set statement(String? value) => setField<String>('statement', value);
}
