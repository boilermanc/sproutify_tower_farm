import '../database.dart';

class CancelledAllocationsViewTable
    extends SupabaseTable<CancelledAllocationsViewRow> {
  @override
  String get tableName => 'cancelled_allocations_view';

  @override
  CancelledAllocationsViewRow createRow(Map<String, dynamic> data) =>
      CancelledAllocationsViewRow(data);
}

class CancelledAllocationsViewRow extends SupabaseDataRow {
  CancelledAllocationsViewRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CancelledAllocationsViewTable();

  int? get allocationId => getField<int>('allocation_id');
  set allocationId(int? value) => setField<int>('allocation_id', value);

  int? get batchId => getField<int>('batch_id');
  set batchId(int? value) => setField<int>('batch_id', value);

  DateTime? get harvestDate => getField<DateTime>('harvest_date');
  set harvestDate(DateTime? value) => setField<DateTime>('harvest_date', value);

  String? get plantName => getField<String>('plant_name');
  set plantName(String? value) => setField<String>('plant_name', value);

  int? get qtyCancelled => getField<int>('qty_cancelled');
  set qtyCancelled(int? value) => setField<int>('qty_cancelled', value);

  DateTime? get allocatedAt => getField<DateTime>('allocated_at');
  set allocatedAt(DateTime? value) => setField<DateTime>('allocated_at', value);

  String? get destinationName => getField<String>('destination_name');
  set destinationName(String? value) =>
      setField<String>('destination_name', value);

  String? get cancellationReason => getField<String>('cancellation_reason');
  set cancellationReason(String? value) =>
      setField<String>('cancellation_reason', value);

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);
}
