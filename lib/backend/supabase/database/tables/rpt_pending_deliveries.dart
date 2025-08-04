import '../database.dart';

class RptPendingDeliveriesTable extends SupabaseTable<RptPendingDeliveriesRow> {
  @override
  String get tableName => 'rpt_pending_deliveries';

  @override
  RptPendingDeliveriesRow createRow(Map<String, dynamic> data) =>
      RptPendingDeliveriesRow(data);
}

class RptPendingDeliveriesRow extends SupabaseDataRow {
  RptPendingDeliveriesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => RptPendingDeliveriesTable();

  int? get allocationId => getField<int>('allocation_id');
  set allocationId(int? value) => setField<int>('allocation_id', value);

  int? get batchId => getField<int>('batch_id');
  set batchId(int? value) => setField<int>('batch_id', value);

  String? get plantName => getField<String>('plant_name');
  set plantName(String? value) => setField<String>('plant_name', value);

  int? get quantity => getField<int>('quantity');
  set quantity(int? value) => setField<int>('quantity', value);

  String? get customerName => getField<String>('customer_name');
  set customerName(String? value) => setField<String>('customer_name', value);

  String? get customerType => getField<String>('customer_type');
  set customerType(String? value) => setField<String>('customer_type', value);

  DateTime? get allocatedAt => getField<DateTime>('allocated_at');
  set allocatedAt(DateTime? value) => setField<DateTime>('allocated_at', value);

  DateTime? get harvestDate => getField<DateTime>('harvest_date');
  set harvestDate(DateTime? value) => setField<DateTime>('harvest_date', value);

  int? get daysPending => getField<int>('days_pending');
  set daysPending(int? value) => setField<int>('days_pending', value);

  int? get daysSinceHarvest => getField<int>('days_since_harvest');
  set daysSinceHarvest(int? value) =>
      setField<int>('days_since_harvest', value);

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);

  String? get deliveryUrgency => getField<String>('delivery_urgency');
  set deliveryUrgency(String? value) =>
      setField<String>('delivery_urgency', value);

  String? get urgencyColor => getField<String>('urgency_color');
  set urgencyColor(String? value) => setField<String>('urgency_color', value);

  String? get daysPendingText => getField<String>('days_pending_text');
  set daysPendingText(String? value) =>
      setField<String>('days_pending_text', value);

  String? get customerTypeColor => getField<String>('customer_type_color');
  set customerTypeColor(String? value) =>
      setField<String>('customer_type_color', value);
}
