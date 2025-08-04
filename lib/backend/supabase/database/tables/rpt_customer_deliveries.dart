import '../database.dart';

class RptCustomerDeliveriesTable
    extends SupabaseTable<RptCustomerDeliveriesRow> {
  @override
  String get tableName => 'rpt_customer_deliveries';

  @override
  RptCustomerDeliveriesRow createRow(Map<String, dynamic> data) =>
      RptCustomerDeliveriesRow(data);
}

class RptCustomerDeliveriesRow extends SupabaseDataRow {
  RptCustomerDeliveriesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => RptCustomerDeliveriesTable();

  String? get customerName => getField<String>('customer_name');
  set customerName(String? value) => setField<String>('customer_name', value);

  String? get customerType => getField<String>('customer_type');
  set customerType(String? value) => setField<String>('customer_type', value);

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);

  int? get totalAllocations => getField<int>('total_allocations');
  set totalAllocations(int? value) => setField<int>('total_allocations', value);

  int? get completedDeliveries => getField<int>('completed_deliveries');
  set completedDeliveries(int? value) =>
      setField<int>('completed_deliveries', value);

  int? get pendingDeliveries => getField<int>('pending_deliveries');
  set pendingDeliveries(int? value) =>
      setField<int>('pending_deliveries', value);

  int? get totalQuantityDelivered => getField<int>('total_quantity_delivered');
  set totalQuantityDelivered(int? value) =>
      setField<int>('total_quantity_delivered', value);

  int? get totalQuantityPending => getField<int>('total_quantity_pending');
  set totalQuantityPending(int? value) =>
      setField<int>('total_quantity_pending', value);

  double? get completionRatePercent =>
      getField<double>('completion_rate_percent');
  set completionRatePercent(double? value) =>
      setField<double>('completion_rate_percent', value);

  DateTime? get firstAllocation => getField<DateTime>('first_allocation');
  set firstAllocation(DateTime? value) =>
      setField<DateTime>('first_allocation', value);

  DateTime? get latestAllocation => getField<DateTime>('latest_allocation');
  set latestAllocation(DateTime? value) =>
      setField<DateTime>('latest_allocation', value);

  String? get customerTypeColor => getField<String>('customer_type_color');
  set customerTypeColor(String? value) =>
      setField<String>('customer_type_color', value);

  String? get completionRateColor => getField<String>('completion_rate_color');
  set completionRateColor(String? value) =>
      setField<String>('completion_rate_color', value);
}
