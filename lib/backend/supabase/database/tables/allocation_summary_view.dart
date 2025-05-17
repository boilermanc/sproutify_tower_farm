import '../database.dart';

class AllocationSummaryViewTable
    extends SupabaseTable<AllocationSummaryViewRow> {
  @override
  String get tableName => 'allocation_summary_view';

  @override
  AllocationSummaryViewRow createRow(Map<String, dynamic> data) =>
      AllocationSummaryViewRow(data);
}

class AllocationSummaryViewRow extends SupabaseDataRow {
  AllocationSummaryViewRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AllocationSummaryViewTable();

  int? get allocationId => getField<int>('allocation_id');
  set allocationId(int? value) => setField<int>('allocation_id', value);

  int? get batchId => getField<int>('batch_id');
  set batchId(int? value) => setField<int>('batch_id', value);

  DateTime? get harvestDate => getField<DateTime>('harvest_date');
  set harvestDate(DateTime? value) => setField<DateTime>('harvest_date', value);

  String? get plantName => getField<String>('plant_name');
  set plantName(String? value) => setField<String>('plant_name', value);

  int? get qtyAllocated => getField<int>('qty_allocated');
  set qtyAllocated(int? value) => setField<int>('qty_allocated', value);

  DateTime? get allocatedAt => getField<DateTime>('allocated_at');
  set allocatedAt(DateTime? value) => setField<DateTime>('allocated_at', value);

  String? get destinationId => getField<String>('destination_id');
  set destinationId(String? value) => setField<String>('destination_id', value);

  String? get destinationName => getField<String>('destination_name');
  set destinationName(String? value) =>
      setField<String>('destination_name', value);

  String? get destinationType => getField<String>('destination_type');
  set destinationType(String? value) =>
      setField<String>('destination_type', value);

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);
}
