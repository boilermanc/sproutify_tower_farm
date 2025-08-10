import '../database.dart';

class SeedTransactionsTable extends SupabaseTable<SeedTransactionsRow> {
  @override
  String get tableName => 'seed_transactions';

  @override
  SeedTransactionsRow createRow(Map<String, dynamic> data) =>
      SeedTransactionsRow(data);
}

class SeedTransactionsRow extends SupabaseDataRow {
  SeedTransactionsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SeedTransactionsTable();

  String get transactionId => getField<String>('transaction_id')!;
  set transactionId(String value) => setField<String>('transaction_id', value);

  String get lotId => getField<String>('lot_id')!;
  set lotId(String value) => setField<String>('lot_id', value);

  String get transactionType => getField<String>('transaction_type')!;
  set transactionType(String value) =>
      setField<String>('transaction_type', value);

  int get quantity => getField<int>('quantity')!;
  set quantity(int value) => setField<int>('quantity', value);

  String? get referenceId => getField<String>('reference_id');
  set referenceId(String? value) => setField<String>('reference_id', value);

  String? get referenceType => getField<String>('reference_type');
  set referenceType(String? value) => setField<String>('reference_type', value);

  String? get notes => getField<String>('notes');
  set notes(String? value) => setField<String>('notes', value);

  DateTime get transactionDate => getField<DateTime>('transaction_date')!;
  set transactionDate(DateTime value) =>
      setField<DateTime>('transaction_date', value);

  String get createdBy => getField<String>('created_by')!;
  set createdBy(String value) => setField<String>('created_by', value);
}
