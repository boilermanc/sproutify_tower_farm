import '../database.dart';

class ProductMonthlyMetricsTable
    extends SupabaseTable<ProductMonthlyMetricsRow> {
  @override
  String get tableName => 'product_monthly_metrics';

  @override
  ProductMonthlyMetricsRow createRow(Map<String, dynamic> data) =>
      ProductMonthlyMetricsRow(data);
}

class ProductMonthlyMetricsRow extends SupabaseDataRow {
  ProductMonthlyMetricsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ProductMonthlyMetricsTable();

  DateTime? get month => getField<DateTime>('month');
  set month(DateTime? value) => setField<DateTime>('month', value);

  String? get productCategoryId => getField<String>('product_category_id');
  set productCategoryId(String? value) =>
      setField<String>('product_category_id', value);

  int? get productsUsed => getField<int>('products_used');
  set productsUsed(int? value) => setField<int>('products_used', value);

  double? get totalUsage => getField<double>('total_usage');
  set totalUsage(double? value) => setField<double>('total_usage', value);

  double? get totalCost => getField<double>('total_cost');
  set totalCost(double? value) => setField<double>('total_cost', value);
}
