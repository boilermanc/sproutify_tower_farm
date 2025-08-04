import '../database.dart';

class RptDailyOperationsTable extends SupabaseTable<RptDailyOperationsRow> {
  @override
  String get tableName => 'rpt_daily_operations';

  @override
  RptDailyOperationsRow createRow(Map<String, dynamic> data) =>
      RptDailyOperationsRow(data);
}

class RptDailyOperationsRow extends SupabaseDataRow {
  RptDailyOperationsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => RptDailyOperationsTable();

  DateTime? get harvestDate => getField<DateTime>('harvest_date');
  set harvestDate(DateTime? value) => setField<DateTime>('harvest_date', value);

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);

  int? get harvestBatches => getField<int>('harvest_batches');
  set harvestBatches(int? value) => setField<int>('harvest_batches', value);

  int? get plantVarieties => getField<int>('plant_varieties');
  set plantVarieties(int? value) => setField<int>('plant_varieties', value);

  int? get totalHarvested => getField<int>('total_harvested');
  set totalHarvested(int? value) => setField<int>('total_harvested', value);

  int? get currentAvailable => getField<int>('current_available');
  set currentAvailable(int? value) => setField<int>('current_available', value);

  int? get allocationsMade => getField<int>('allocations_made');
  set allocationsMade(int? value) => setField<int>('allocations_made', value);

  int? get deliveriesCompleted => getField<int>('deliveries_completed');
  set deliveriesCompleted(int? value) =>
      setField<int>('deliveries_completed', value);

  int? get quantityDelivered => getField<int>('quantity_delivered');
  set quantityDelivered(int? value) =>
      setField<int>('quantity_delivered', value);

  double? get sameDayDeliveryRate => getField<double>('same_day_delivery_rate');
  set sameDayDeliveryRate(double? value) =>
      setField<double>('same_day_delivery_rate', value);
}
