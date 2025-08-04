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

  String? get destination => getField<String>('destination');
  set destination(String? value) => setField<String>('destination', value);

  int get quantity => getField<int>('quantity')!;
  set quantity(int value) => setField<int>('quantity', value);

  DateTime? get allocatedAt => getField<DateTime>('allocated_at');
  set allocatedAt(DateTime? value) => setField<DateTime>('allocated_at', value);

  int get batchId => getField<int>('batch_id')!;
  set batchId(int value) => setField<int>('batch_id', value);

  String get farmId => getField<String>('farm_id')!;
  set farmId(String value) => setField<String>('farm_id', value);

  String get userId => getField<String>('user_id')!;
  set userId(String value) => setField<String>('user_id', value);

  String get destinationId => getField<String>('destination_id')!;
  set destinationId(String value) => setField<String>('destination_id', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  DateTime? get deliveredAt => getField<DateTime>('delivered_at');
  set deliveredAt(DateTime? value) => setField<DateTime>('delivered_at', value);

  String? get deliveredBy => getField<String>('delivered_by');
  set deliveredBy(String? value) => setField<String>('delivered_by', value);

  String? get notes => getField<String>('notes');
  set notes(String? value) => setField<String>('notes', value);
}
