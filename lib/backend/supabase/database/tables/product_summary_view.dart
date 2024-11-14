import '../database.dart';

class ProductSummaryViewTable extends SupabaseTable<ProductSummaryViewRow> {
  @override
  String get tableName => 'product_summary_view';

  @override
  ProductSummaryViewRow createRow(Map<String, dynamic> data) =>
      ProductSummaryViewRow(data);
}

class ProductSummaryViewRow extends SupabaseDataRow {
  ProductSummaryViewRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ProductSummaryViewTable();

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);

  String? get productId => getField<String>('product_id');
  set productId(String? value) => setField<String>('product_id', value);

  String? get productName => getField<String>('product_name');
  set productName(String? value) => setField<String>('product_name', value);

  String? get categoryName => getField<String>('category_name');
  set categoryName(String? value) => setField<String>('category_name', value);

  String? get typeName => getField<String>('type_name');
  set typeName(String? value) => setField<String>('type_name', value);

  double? get quantityOnHand => getField<double>('quantity_on_hand');
  set quantityOnHand(double? value) =>
      setField<double>('quantity_on_hand', value);

  bool? get active => getField<bool>('active');
  set active(bool? value) => setField<bool>('active', value);

  String? get stockStatus => getField<String>('stock_status');
  set stockStatus(String? value) => setField<String>('stock_status', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);
}
