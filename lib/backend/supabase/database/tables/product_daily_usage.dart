import '../database.dart';

class ProductDailyUsageTable extends SupabaseTable<ProductDailyUsageRow> {
  @override
  String get tableName => 'product_daily_usage';

  @override
  ProductDailyUsageRow createRow(Map<String, dynamic> data) =>
      ProductDailyUsageRow(data);
}

class ProductDailyUsageRow extends SupabaseDataRow {
  ProductDailyUsageRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ProductDailyUsageTable();

  String? get productId => getField<String>('product_id');
  set productId(String? value) => setField<String>('product_id', value);

  String? get productName => getField<String>('product_name');
  set productName(String? value) => setField<String>('product_name', value);

  String? get productCategoryId => getField<String>('product_category_id');
  set productCategoryId(String? value) =>
      setField<String>('product_category_id', value);

  DateTime? get usageDate => getField<DateTime>('usage_date');
  set usageDate(DateTime? value) => setField<DateTime>('usage_date', value);

  double? get totalUsage => getField<double>('total_usage');
  set totalUsage(double? value) => setField<double>('total_usage', value);

  int? get usageCount => getField<int>('usage_count');
  set usageCount(int? value) => setField<int>('usage_count', value);
}
