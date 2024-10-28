import '../database.dart';

class ProductInventoryThresholdsTable
    extends SupabaseTable<ProductInventoryThresholdsRow> {
  @override
  String get tableName => 'product_inventory_thresholds';

  @override
  ProductInventoryThresholdsRow createRow(Map<String, dynamic> data) =>
      ProductInventoryThresholdsRow(data);
}

class ProductInventoryThresholdsRow extends SupabaseDataRow {
  ProductInventoryThresholdsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ProductInventoryThresholdsTable();

  String get thresholdId => getField<String>('threshold_id')!;
  set thresholdId(String value) => setField<String>('threshold_id', value);

  String get productId => getField<String>('product_id')!;
  set productId(String value) => setField<String>('product_id', value);

  String get farmId => getField<String>('farm_id')!;
  set farmId(String value) => setField<String>('farm_id', value);

  double get minQuantity => getField<double>('min_quantity')!;
  set minQuantity(double value) => setField<double>('min_quantity', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  String get updatedByUserId => getField<String>('updated_by_user_id')!;
  set updatedByUserId(String value) =>
      setField<String>('updated_by_user_id', value);
}
