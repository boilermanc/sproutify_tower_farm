import '../database.dart';

class RptAllocationEfficiencyTable
    extends SupabaseTable<RptAllocationEfficiencyRow> {
  @override
  String get tableName => 'rpt_allocation_efficiency';

  @override
  RptAllocationEfficiencyRow createRow(Map<String, dynamic> data) =>
      RptAllocationEfficiencyRow(data);
}

class RptAllocationEfficiencyRow extends SupabaseDataRow {
  RptAllocationEfficiencyRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => RptAllocationEfficiencyTable();

  String? get plantName => getField<String>('plant_name');
  set plantName(String? value) => setField<String>('plant_name', value);

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);

  DateTime? get allocationWeek => getField<DateTime>('allocation_week');
  set allocationWeek(DateTime? value) =>
      setField<DateTime>('allocation_week', value);

  int? get totalAllocations => getField<int>('total_allocations');
  set totalAllocations(int? value) => setField<int>('total_allocations', value);

  int? get successfulDeliveries => getField<int>('successful_deliveries');
  set successfulDeliveries(int? value) =>
      setField<int>('successful_deliveries', value);

  int? get overdueAllocations => getField<int>('overdue_allocations');
  set overdueAllocations(int? value) =>
      setField<int>('overdue_allocations', value);

  double? get avgDaysToDelivery => getField<double>('avg_days_to_delivery');
  set avgDaysToDelivery(double? value) =>
      setField<double>('avg_days_to_delivery', value);

  int? get totalQuantityAllocated => getField<int>('total_quantity_allocated');
  set totalQuantityAllocated(int? value) =>
      setField<int>('total_quantity_allocated', value);

  int? get totalQuantityDelivered => getField<int>('total_quantity_delivered');
  set totalQuantityDelivered(int? value) =>
      setField<int>('total_quantity_delivered', value);

  double? get successRatePercent => getField<double>('success_rate_percent');
  set successRatePercent(double? value) =>
      setField<double>('success_rate_percent', value);
}
