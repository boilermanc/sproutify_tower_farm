import '../database.dart';

class SensorEnvironmentSummaryTable
    extends SupabaseTable<SensorEnvironmentSummaryRow> {
  @override
  String get tableName => 'sensor_environment_summary';

  @override
  SensorEnvironmentSummaryRow createRow(Map<String, dynamic> data) =>
      SensorEnvironmentSummaryRow(data);
}

class SensorEnvironmentSummaryRow extends SupabaseDataRow {
  SensorEnvironmentSummaryRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SensorEnvironmentSummaryTable();

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);

  String? get sensorName => getField<String>('sensor_name');
  set sensorName(String? value) => setField<String>('sensor_name', value);

  double? get sensorTemperature => getField<double>('sensor_temperature');
  set sensorTemperature(double? value) =>
      setField<double>('sensor_temperature', value);

  double? get sensorHumidity => getField<double>('sensor_humidity');
  set sensorHumidity(double? value) =>
      setField<double>('sensor_humidity', value);

  double? get sensorVpd => getField<double>('sensor_vpd');
  set sensorVpd(double? value) => setField<double>('sensor_vpd', value);

  DateTime? get sensorLastUpdated => getField<DateTime>('sensor_last_updated');
  set sensorLastUpdated(DateTime? value) =>
      setField<DateTime>('sensor_last_updated', value);
}
