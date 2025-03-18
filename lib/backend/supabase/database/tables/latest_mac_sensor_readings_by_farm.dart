import '../database.dart';

class LatestMacSensorReadingsByFarmTable
    extends SupabaseTable<LatestMacSensorReadingsByFarmRow> {
  @override
  String get tableName => 'latest_mac_sensor_readings_by_farm';

  @override
  LatestMacSensorReadingsByFarmRow createRow(Map<String, dynamic> data) =>
      LatestMacSensorReadingsByFarmRow(data);
}

class LatestMacSensorReadingsByFarmRow extends SupabaseDataRow {
  LatestMacSensorReadingsByFarmRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => LatestMacSensorReadingsByFarmTable();

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

  String? get measurementSystem => getField<String>('measurement_system');
  set measurementSystem(String? value) =>
      setField<String>('measurement_system', value);

  String? get macAddress => getField<String>('mac_address');
  set macAddress(String? value) => setField<String>('mac_address', value);
}
