import '../database.dart';

class ProductInventoryTransactionsTable
    extends SupabaseTable<ProductInventoryTransactionsRow> {
  @override
  String get tableName => 'product_inventory_transactions';

  @override
  ProductInventoryTransactionsRow createRow(Map<String, dynamic> data) =>
      ProductInventoryTransactionsRow(data);
}

class ProductInventoryTransactionsRow extends SupabaseDataRow {
  ProductInventoryTransactionsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ProductInventoryTransactionsTable();

  String get transactionId => getField<String>('transaction_id')!;
  set transactionId(String value) => setField<String>('transaction_id', value);

  String get productId => getField<String>('product_id')!;
  set productId(String value) => setField<String>('product_id', value);

  String get farmId => getField<String>('farm_id')!;
  set farmId(String value) => setField<String>('farm_id', value);

  double get quantityChange => getField<double>('quantity_change')!;
  set quantityChange(double value) =>
      setField<double>('quantity_change', value);

  double get quantityAfter => getField<double>('quantity_after')!;
  set quantityAfter(double value) => setField<double>('quantity_after', value);

  String get reason => getField<String>('reason')!;
  set reason(String value) => setField<String>('reason', value);

  String? get notes => getField<String>('notes');
  set notes(String? value) => setField<String>('notes', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String get createdByUserId => getField<String>('created_by_user_id')!;
  set createdByUserId(String value) =>
      setField<String>('created_by_user_id', value);
}
