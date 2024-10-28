import '../database.dart';

class AllocationsTable extends SupabaseTable<AllocationsRow> {
  @override
  String get tableName => 'allocations';

  @override
  AllocationsRow createRow(Map<String, dynamic> data) => AllocationsRow(data);
}

class AllocationsRow extends SupabaseDataRow {
  AllocationsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AllocationsTable();

  int get allocationId => getField<int>('allocation_id')!;
  set allocationId(int value) => setField<int>('allocation_id', value);

  int get reservationId => getField<int>('reservation_id')!;
  set reservationId(int value) => setField<int>('reservation_id', value);

  String get destination => getField<String>('destination')!;
  set destination(String value) => setField<String>('destination', value);

  int get quantity => getField<int>('quantity')!;
  set quantity(int value) => setField<int>('quantity', value);

  DateTime? get allocatedAt => getField<DateTime>('allocated_at');
  set allocatedAt(DateTime? value) => setField<DateTime>('allocated_at', value);
}
