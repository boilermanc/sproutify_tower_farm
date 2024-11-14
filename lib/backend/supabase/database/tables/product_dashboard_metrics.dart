import '../database.dart';

class ProductDashboardMetricsTable
    extends SupabaseTable<ProductDashboardMetricsRow> {
  @override
  String get tableName => 'product_dashboard_metrics';

  @override
  ProductDashboardMetricsRow createRow(Map<String, dynamic> data) =>
      ProductDashboardMetricsRow(data);
}

class ProductDashboardMetricsRow extends SupabaseDataRow {
  ProductDashboardMetricsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ProductDashboardMetricsTable();

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);

  double? get inventoryValue => getField<double>('inventory_value');
  set inventoryValue(double? value) =>
      setField<double>('inventory_value', value);

  double? get inventoryChangePercentage =>
      getField<double>('inventory_change_percentage');
  set inventoryChangePercentage(double? value) =>
      setField<double>('inventory_change_percentage', value);

  int? get lowStockCount => getField<int>('low_stock_count');
  set lowStockCount(int? value) => setField<int>('low_stock_count', value);

  int? get outOfStockCount => getField<int>('out_of_stock_count');
  set outOfStockCount(int? value) => setField<int>('out_of_stock_count', value);

  int? get totalAlerts => getField<int>('total_alerts');
  set totalAlerts(int? value) => setField<int>('total_alerts', value);

  double? get reorderValue => getField<double>('reorder_value');
  set reorderValue(double? value) => setField<double>('reorder_value', value);

  int? get itemsToReorder => getField<int>('items_to_reorder');
  set itemsToReorder(int? value) => setField<int>('items_to_reorder', value);

  double? get currentMonthSpend => getField<double>('current_month_spend');
  set currentMonthSpend(double? value) =>
      setField<double>('current_month_spend', value);

  double? get spendChangePercentage =>
      getField<double>('spend_change_percentage');
  set spendChangePercentage(double? value) =>
      setField<double>('spend_change_percentage', value);
}
