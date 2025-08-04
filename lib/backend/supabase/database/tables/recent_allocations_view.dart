import '../database.dart';

class RecentAllocationsViewTable
    extends SupabaseTable<RecentAllocationsViewRow> {
  @override
  String get tableName => 'recent_allocations_view';

  @override
  RecentAllocationsViewRow createRow(Map<String, dynamic> data) =>
      RecentAllocationsViewRow(data);
}

class RecentAllocationsViewRow extends SupabaseDataRow {
  RecentAllocationsViewRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => RecentAllocationsViewTable();

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

  String? get allocationStatus => getField<String>('allocation_status');
  set allocationStatus(String? value) =>
      setField<String>('allocation_status', value);

  DateTime? get deliveredAt => getField<DateTime>('delivered_at');
  set deliveredAt(DateTime? value) => setField<DateTime>('delivered_at', value);

  String? get notes => getField<String>('notes');
  set notes(String? value) => setField<String>('notes', value);

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);

  int? get remainingInventory => getField<int>('remaining_inventory');
  set remainingInventory(int? value) =>
      setField<int>('remaining_inventory', value);

  String? get inventoryStatus => getField<String>('inventory_status');
  set inventoryStatus(String? value) =>
      setField<String>('inventory_status', value);

  String? get statusDisplayText => getField<String>('status_display_text');
  set statusDisplayText(String? value) =>
      setField<String>('status_display_text', value);

  String? get statusBackgroundColor =>
      getField<String>('status_background_color');
  set statusBackgroundColor(String? value) =>
      setField<String>('status_background_color', value);

  String? get statusTextColor => getField<String>('status_text_color');
  set statusTextColor(String? value) =>
      setField<String>('status_text_color', value);

  int? get daysSinceAllocatedNumber =>
      getField<int>('days_since_allocated_number');
  set daysSinceAllocatedNumber(int? value) =>
      setField<int>('days_since_allocated_number', value);

  String? get daysSinceAllocatedText =>
      getField<String>('days_since_allocated_text');
  set daysSinceAllocatedText(String? value) =>
      setField<String>('days_since_allocated_text', value);

  String? get daysTextColor => getField<String>('days_text_color');
  set daysTextColor(String? value) =>
      setField<String>('days_text_color', value);

  String? get priorityLevel => getField<String>('priority_level');
  set priorityLevel(String? value) => setField<String>('priority_level', value);

  String? get deliveryMethodDescription =>
      getField<String>('delivery_method_description');
  set deliveryMethodDescription(String? value) =>
      setField<String>('delivery_method_description', value);
}
