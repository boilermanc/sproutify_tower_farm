import '../database.dart';

class ProductSafetyEquipmentListTable
    extends SupabaseTable<ProductSafetyEquipmentListRow> {
  @override
  String get tableName => 'product_safety_equipment_list';

  @override
  ProductSafetyEquipmentListRow createRow(Map<String, dynamic> data) =>
      ProductSafetyEquipmentListRow(data);
}

class ProductSafetyEquipmentListRow extends SupabaseDataRow {
  ProductSafetyEquipmentListRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ProductSafetyEquipmentListTable();

  String? get productItemId => getField<String>('product_item_id');
  set productItemId(String? value) =>
      setField<String>('product_item_id', value);

  String? get safetyType => getField<String>('safety_type');
  set safetyType(String? value) => setField<String>('safety_type', value);

  String? get safetyItem => getField<String>('safety_item');
  set safetyItem(String? value) => setField<String>('safety_item', value);
}
