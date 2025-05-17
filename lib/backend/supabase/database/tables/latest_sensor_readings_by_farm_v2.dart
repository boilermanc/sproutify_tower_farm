import '../database.dart';

class LatestSensorReadingsByFarmV2Table
    extends SupabaseTable<LatestSensorReadingsByFarmV2Row> {
  @override
  String get tableName => 'latest_sensor_readings_by_farm_v2';

  @override
  LatestSensorReadingsByFarmV2Row createRow(Map<String, dynamic> data) =>
      LatestSensorReadingsByFarmV2Row(data);
}

class LatestSensorReadingsByFarmV2Row extends SupabaseDataRow {
  LatestSensorReadingsByFarmV2Row(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => LatestSensorReadingsByFarmV2Table();

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);

  String? get sensorId => getField<String>('sensor_id');
  set sensorId(String? value) => setField<String>('sensor_id', value);

  String? get sensorName => getField<String>('sensor_name');
  set sensorName(String? value) => setField<String>('sensor_name', value);

  String? get sensorColor => getField<String>('sensor_color');
  set sensorColor(String? value) => setField<String>('sensor_color', value);

  String? get locationId => getField<String>('location_id');
  set locationId(String? value) => setField<String>('location_id', value);

  String? get locationName => getField<String>('location_name');
  set locationName(String? value) => setField<String>('location_name', value);

  String? get readingType => getField<String>('reading_type');
  set readingType(String? value) => setField<String>('reading_type', value);

  double? get latestValue => getField<double>('latest_value');
  set latestValue(double? value) => setField<double>('latest_value', value);

  DateTime? get latestTime => getField<DateTime>('latest_time');
  set latestTime(DateTime? value) => setField<DateTime>('latest_time', value);

  DateTime? get latestTimeWithoutTz =>
      getField<DateTime>('latest_time_without_tz');
  set latestTimeWithoutTz(DateTime? value) =>
      setField<DateTime>('latest_time_without_tz', value);

  String? get readingTypeDisplayName =>
      getField<String>('reading_type_display_name');
  set readingTypeDisplayName(String? value) =>
      setField<String>('reading_type_display_name', value);

  String? get readingUnit => getField<String>('reading_unit');
  set readingUnit(String? value) => setField<String>('reading_unit', value);

  String? get readingTypeDisplaySort =>
      getField<String>('reading_type_display_sort');
  set readingTypeDisplaySort(String? value) =>
      setField<String>('reading_type_display_sort', value);

  String? get measurementSystem => getField<String>('measurement_system');
  set measurementSystem(String? value) =>
      setField<String>('measurement_system', value);

  String? get sensorMacAddress => getField<String>('sensor_mac_address');
  set sensorMacAddress(String? value) =>
      setField<String>('sensor_mac_address', value);

  String? get gatewayMac => getField<String>('gateway_mac');
  set gatewayMac(String? value) => setField<String>('gateway_mac', value);

  String? get bleMacAddress => getField<String>('ble_mac_address');
  set bleMacAddress(String? value) =>
      setField<String>('ble_mac_address', value);

  String? get detectedSensorType => getField<String>('detected_sensor_type');
  set detectedSensorType(String? value) =>
      setField<String>('detected_sensor_type', value);
}
