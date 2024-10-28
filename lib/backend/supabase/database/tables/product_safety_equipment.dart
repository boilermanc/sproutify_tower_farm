import '../database.dart';

class ProductSafetyEquipmentTable
    extends SupabaseTable<ProductSafetyEquipmentRow> {
  @override
  String get tableName => 'product_safety_equipment';

  @override
  ProductSafetyEquipmentRow createRow(Map<String, dynamic> data) =>
      ProductSafetyEquipmentRow(data);
}

class ProductSafetyEquipmentRow extends SupabaseDataRow {
  ProductSafetyEquipmentRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ProductSafetyEquipmentTable();

  String get productId => getField<String>('product_id')!;
  set productId(String value) => setField<String>('product_id', value);

  String get equipmentId => getField<String>('equipment_id')!;
  set equipmentId(String value) => setField<String>('equipment_id', value);
}
