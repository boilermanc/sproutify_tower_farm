import '../database.dart';

class LatestWaterFlowReadingsTable
    extends SupabaseTable<LatestWaterFlowReadingsRow> {
  @override
  String get tableName => 'latest_water_flow_readings';

  @override
  LatestWaterFlowReadingsRow createRow(Map<String, dynamic> data) =>
      LatestWaterFlowReadingsRow(data);
}

class LatestWaterFlowReadingsRow extends SupabaseDataRow {
  LatestWaterFlowReadingsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => LatestWaterFlowReadingsTable();

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);

  String? get sensorId => getField<String>('sensor_id');
  set sensorId(String? value) => setField<String>('sensor_id', value);

  String? get sensorName => getField<String>('sensor_name');
  set sensorName(String? value) => setField<String>('sensor_name', value);

  String? get readingType => getField<String>('reading_type');
  set readingType(String? value) => setField<String>('reading_type', value);

  double? get latestValue => getField<double>('latest_value');
  set latestValue(double? value) => setField<double>('latest_value', value);

  DateTime? get latestTime => getField<DateTime>('latest_time');
  set latestTime(DateTime? value) => setField<DateTime>('latest_time', value);

  String? get readingTypeDisplayName =>
      getField<String>('reading_type_display_name');
  set readingTypeDisplayName(String? value) =>
      setField<String>('reading_type_display_name', value);

  String? get readingUnit => getField<String>('reading_unit');
  set readingUnit(String? value) => setField<String>('reading_unit', value);
}
