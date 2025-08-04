import '../database.dart';

class RptHarvestPerformanceTable
    extends SupabaseTable<RptHarvestPerformanceRow> {
  @override
  String get tableName => 'rpt_harvest_performance';

  @override
  RptHarvestPerformanceRow createRow(Map<String, dynamic> data) =>
      RptHarvestPerformanceRow(data);
}

class RptHarvestPerformanceRow extends SupabaseDataRow {
  RptHarvestPerformanceRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => RptHarvestPerformanceTable();

  String? get plantName => getField<String>('plant_name');
  set plantName(String? value) => setField<String>('plant_name', value);

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);

  DateTime? get harvestWeek => getField<DateTime>('harvest_week');
  set harvestWeek(DateTime? value) => setField<DateTime>('harvest_week', value);

  int? get totalHarvested => getField<int>('total_harvested');
  set totalHarvested(int? value) => setField<int>('total_harvested', value);

  int? get totalDelivered => getField<int>('total_delivered');
  set totalDelivered(int? value) => setField<int>('total_delivered', value);

  int? get stillAvailable => getField<int>('still_available');
  set stillAvailable(int? value) => setField<int>('still_available', value);

  int? get totalWaste => getField<int>('total_waste');
  set totalWaste(int? value) => setField<int>('total_waste', value);

  int? get totalDonated => getField<int>('total_donated');
  set totalDonated(int? value) => setField<int>('total_donated', value);

  int? get harvestSessions => getField<int>('harvest_sessions');
  set harvestSessions(int? value) => setField<int>('harvest_sessions', value);

  double? get deliveryRatePercent => getField<double>('delivery_rate_percent');
  set deliveryRatePercent(double? value) =>
      setField<double>('delivery_rate_percent', value);

  double? get wasteRatePercent => getField<double>('waste_rate_percent');
  set wasteRatePercent(double? value) =>
      setField<double>('waste_rate_percent', value);

  String? get performanceColor => getField<String>('performance_color');
  set performanceColor(String? value) =>
      setField<String>('performance_color', value);

  String? get wasteColor => getField<String>('waste_color');
  set wasteColor(String? value) => setField<String>('waste_color', value);
}
