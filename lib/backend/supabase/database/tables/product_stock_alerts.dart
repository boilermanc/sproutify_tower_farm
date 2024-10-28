import '../database.dart';

class ProductStockAlertsTable extends SupabaseTable<ProductStockAlertsRow> {
  @override
  String get tableName => 'product_stock_alerts';

  @override
  ProductStockAlertsRow createRow(Map<String, dynamic> data) =>
      ProductStockAlertsRow(data);
}

class ProductStockAlertsRow extends SupabaseDataRow {
  ProductStockAlertsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ProductStockAlertsTable();

  String? get productId => getField<String>('product_id');
  set productId(String? value) => setField<String>('product_id', value);

  String? get productName => getField<String>('product_name');
  set productName(String? value) => setField<String>('product_name', value);

  String? get productCategoryId => getField<String>('product_category_id');
  set productCategoryId(String? value) =>
      setField<String>('product_category_id', value);

  double? get quantityOnHand => getField<double>('quantity_on_hand');
  set quantityOnHand(double? value) =>
      setField<double>('quantity_on_hand', value);

  double? get minQuantity => getField<double>('min_quantity');
  set minQuantity(double? value) => setField<double>('min_quantity', value);

  String? get stockStatus => getField<String>('stock_status');
  set stockStatus(String? value) => setField<String>('stock_status', value);

  DateTime? get lastUpdated => getField<DateTime>('last_updated');
  set lastUpdated(DateTime? value) => setField<DateTime>('last_updated', value);

  double? get costPerUnit => getField<double>('cost_per_unit');
  set costPerUnit(double? value) => setField<double>('cost_per_unit', value);

  double? get currentValue => getField<double>('current_value');
  set currentValue(double? value) => setField<double>('current_value', value);
}
