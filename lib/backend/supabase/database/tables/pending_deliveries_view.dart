import '../database.dart';

class PendingDeliveriesViewTable
    extends SupabaseTable<PendingDeliveriesViewRow> {
  @override
  String get tableName => 'pending_deliveries_view';

  @override
  PendingDeliveriesViewRow createRow(Map<String, dynamic> data) =>
      PendingDeliveriesViewRow(data);
}

class PendingDeliveriesViewRow extends SupabaseDataRow {
  PendingDeliveriesViewRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PendingDeliveriesViewTable();

  int? get allocationId => getField<int>('allocation_id');
  set allocationId(int? value) => setField<int>('allocation_id', value);

  int? get batchId => getField<int>('batch_id');
  set batchId(int? value) => setField<int>('batch_id', value);

  DateTime? get harvestDate => getField<DateTime>('harvest_date');
  set harvestDate(DateTime? value) => setField<DateTime>('harvest_date', value);

  String? get plantName => getField<String>('plant_name');
  set plantName(String? value) => setField<String>('plant_name', value);

  int? get qtyToDeliver => getField<int>('qty_to_deliver');
  set qtyToDeliver(int? value) => setField<int>('qty_to_deliver', value);

  DateTime? get allocatedAt => getField<DateTime>('allocated_at');
  set allocatedAt(DateTime? value) => setField<DateTime>('allocated_at', value);

  String? get destinationName => getField<String>('destination_name');
  set destinationName(String? value) =>
      setField<String>('destination_name', value);

  String? get destinationType => getField<String>('destination_type');
  set destinationType(String? value) =>
      setField<String>('destination_type', value);

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);

  int? get daysPending => getField<int>('days_pending');
  set daysPending(int? value) => setField<int>('days_pending', value);
}
