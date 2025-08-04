import '../database.dart';

class RptSummaryStatsTable extends SupabaseTable<RptSummaryStatsRow> {
  @override
  String get tableName => 'rpt_summary_stats';

  @override
  RptSummaryStatsRow createRow(Map<String, dynamic> data) =>
      RptSummaryStatsRow(data);
}

class RptSummaryStatsRow extends SupabaseDataRow {
  RptSummaryStatsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => RptSummaryStatsTable();

  int? get todaysHarvestBatches => getField<int>('todays_harvest_batches');
  set todaysHarvestBatches(int? value) =>
      setField<int>('todays_harvest_batches', value);

  int? get todaysAllocations => getField<int>('todays_allocations');
  set todaysAllocations(int? value) =>
      setField<int>('todays_allocations', value);

  int? get todaysDeliveries => getField<int>('todays_deliveries');
  set todaysDeliveries(int? value) => setField<int>('todays_deliveries', value);

  int? get pendingDeliveries => getField<int>('pending_deliveries');
  set pendingDeliveries(int? value) =>
      setField<int>('pending_deliveries', value);

  int? get overdueDeliveries => getField<int>('overdue_deliveries');
  set overdueDeliveries(int? value) =>
      setField<int>('overdue_deliveries', value);

  int? get totalAvailableInventory =>
      getField<int>('total_available_inventory');
  set totalAvailableInventory(int? value) =>
      setField<int>('total_available_inventory', value);

  int? get oldInventoryBatches => getField<int>('old_inventory_batches');
  set oldInventoryBatches(int? value) =>
      setField<int>('old_inventory_batches', value);

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);

  String? get overdueStatusColor => getField<String>('overdue_status_color');
  set overdueStatusColor(String? value) =>
      setField<String>('overdue_status_color', value);

  String? get oldInventoryColor => getField<String>('old_inventory_color');
  set oldInventoryColor(String? value) =>
      setField<String>('old_inventory_color', value);

  String? get activityLevelColor => getField<String>('activity_level_color');
  set activityLevelColor(String? value) =>
      setField<String>('activity_level_color', value);
}
