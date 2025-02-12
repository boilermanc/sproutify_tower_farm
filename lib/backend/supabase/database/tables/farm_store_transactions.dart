import '../database.dart';

class FarmStoreTransactionsTable
    extends SupabaseTable<FarmStoreTransactionsRow> {
  @override
  String get tableName => 'farm_store_transactions';

  @override
  FarmStoreTransactionsRow createRow(Map<String, dynamic> data) =>
      FarmStoreTransactionsRow(data);
}

class FarmStoreTransactionsRow extends SupabaseDataRow {
  FarmStoreTransactionsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => FarmStoreTransactionsTable();

  int get transactionId => getField<int>('transaction_id')!;
  set transactionId(int value) => setField<int>('transaction_id', value);

  int get inventoryId => getField<int>('inventory_id')!;
  set inventoryId(int value) => setField<int>('inventory_id', value);

  String get transactionType => getField<String>('transaction_type')!;
  set transactionType(String value) =>
      setField<String>('transaction_type', value);

  int get quantity => getField<int>('quantity')!;
  set quantity(int value) => setField<int>('quantity', value);

  DateTime? get transactionDate => getField<DateTime>('transaction_date');
  set transactionDate(DateTime? value) =>
      setField<DateTime>('transaction_date', value);

  String get farmId => getField<String>('farm_id')!;
  set farmId(String value) => setField<String>('farm_id', value);
}
