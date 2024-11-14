import '../database.dart';

class ProductTransactionsTable extends SupabaseTable<ProductTransactionsRow> {
  @override
  String get tableName => 'product_transactions';

  @override
  ProductTransactionsRow createRow(Map<String, dynamic> data) =>
      ProductTransactionsRow(data);
}

class ProductTransactionsRow extends SupabaseDataRow {
  ProductTransactionsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ProductTransactionsTable();

  String get transactionId => getField<String>('transaction_id')!;
  set transactionId(String value) => setField<String>('transaction_id', value);

  String get productId => getField<String>('product_id')!;
  set productId(String value) => setField<String>('product_id', value);

  String get farmId => getField<String>('farm_id')!;
  set farmId(String value) => setField<String>('farm_id', value);

  DateTime get transactionDate => getField<DateTime>('transaction_date')!;
  set transactionDate(DateTime value) =>
      setField<DateTime>('transaction_date', value);

  String get transactionType => getField<String>('transaction_type')!;
  set transactionType(String value) =>
      setField<String>('transaction_type', value);

  double get quantity => getField<double>('quantity')!;
  set quantity(double value) => setField<double>('quantity', value);

  String get unit => getField<String>('unit')!;
  set unit(String value) => setField<String>('unit', value);

  double get costPerUnit => getField<double>('cost_per_unit')!;
  set costPerUnit(double value) => setField<double>('cost_per_unit', value);

  double get totalCost => getField<double>('total_cost')!;
  set totalCost(double value) => setField<double>('total_cost', value);

  String? get vendorId => getField<String>('vendor_id');
  set vendorId(String? value) => setField<String>('vendor_id', value);

  String? get purchaseOrderNumber => getField<String>('purchase_order_number');
  set purchaseOrderNumber(String? value) =>
      setField<String>('purchase_order_number', value);

  String get createdByUserId => getField<String>('created_by_user_id')!;
  set createdByUserId(String value) =>
      setField<String>('created_by_user_id', value);

  String? get notes => getField<String>('notes');
  set notes(String? value) => setField<String>('notes', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  DateTime get updatedAt => getField<DateTime>('updated_at')!;
  set updatedAt(DateTime value) => setField<DateTime>('updated_at', value);
}
