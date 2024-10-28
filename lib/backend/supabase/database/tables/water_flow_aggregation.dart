import '../database.dart';

class WaterFlowAggregationTable extends SupabaseTable<WaterFlowAggregationRow> {
  @override
  String get tableName => 'water_flow_aggregation';

  @override
  WaterFlowAggregationRow createRow(Map<String, dynamic> data) =>
      WaterFlowAggregationRow(data);
}

class WaterFlowAggregationRow extends SupabaseDataRow {
  WaterFlowAggregationRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => WaterFlowAggregationTable();

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);

  String? get sensorId => getField<String>('sensor_id');
  set sensorId(String? value) => setField<String>('sensor_id', value);

  String? get sensorName => getField<String>('sensor_name');
  set sensorName(String? value) => setField<String>('sensor_name', value);

  DateTime? get startDate => getField<DateTime>('start_date');
  set startDate(DateTime? value) => setField<DateTime>('start_date', value);

  String? get periodType => getField<String>('period_type');
  set periodType(String? value) => setField<String>('period_type', value);

  double? get latestReading => getField<double>('latest_reading');
  set latestReading(double? value) => setField<double>('latest_reading', value);

  String? get unitType => getField<String>('unit_type');
  set unitType(String? value) => setField<String>('unit_type', value);

  DateTime? get lastUpdated => getField<DateTime>('last_updated');
  set lastUpdated(DateTime? value) => setField<DateTime>('last_updated', value);
}
