import '../database.dart';

class ProductInventoryLevelsTable
    extends SupabaseTable<ProductInventoryLevelsRow> {
  @override
  String get tableName => 'product_inventory_levels';

  @override
  ProductInventoryLevelsRow createRow(Map<String, dynamic> data) =>
      ProductInventoryLevelsRow(data);
}

class ProductInventoryLevelsRow extends SupabaseDataRow {
  ProductInventoryLevelsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ProductInventoryLevelsTable();

  String get inventoryId => getField<String>('inventory_id')!;
  set inventoryId(String value) => setField<String>('inventory_id', value);

  String get productId => getField<String>('product_id')!;
  set productId(String value) => setField<String>('product_id', value);

  String get farmId => getField<String>('farm_id')!;
  set farmId(String value) => setField<String>('farm_id', value);

  double get quantityOnHand => getField<double>('quantity_on_hand')!;
  set quantityOnHand(double value) =>
      setField<double>('quantity_on_hand', value);

  String get unit => getField<String>('unit')!;
  set unit(String value) => setField<String>('unit', value);

  DateTime? get lastUpdated => getField<DateTime>('last_updated');
  set lastUpdated(DateTime? value) => setField<DateTime>('last_updated', value);

  String get updatedByUserId => getField<String>('updated_by_user_id')!;
  set updatedByUserId(String value) =>
      setField<String>('updated_by_user_id', value);
}
