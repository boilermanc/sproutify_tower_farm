import '../database.dart';

class SensorAlertStatusTable extends SupabaseTable<SensorAlertStatusRow> {
  @override
  String get tableName => 'sensor_alert_status';

  @override
  SensorAlertStatusRow createRow(Map<String, dynamic> data) =>
      SensorAlertStatusRow(data);
}

class SensorAlertStatusRow extends SupabaseDataRow {
  SensorAlertStatusRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SensorAlertStatusTable();

  String? get sensorId => getField<String>('sensor_id');
  set sensorId(String? value) => setField<String>('sensor_id', value);

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);

  String? get sensorName => getField<String>('sensor_name');
  set sensorName(String? value) => setField<String>('sensor_name', value);

  String? get sensorType => getField<String>('sensor_type');
  set sensorType(String? value) => setField<String>('sensor_type', value);

  String? get locationId => getField<String>('location_id');
  set locationId(String? value) => setField<String>('location_id', value);

  String? get locationName => getField<String>('location_name');
  set locationName(String? value) => setField<String>('location_name', value);

  String? get readingType => getField<String>('reading_type');
  set readingType(String? value) => setField<String>('reading_type', value);

  String? get readingTypeDisplayName =>
      getField<String>('reading_type_display_name');
  set readingTypeDisplayName(String? value) =>
      setField<String>('reading_type_display_name', value);

  String? get readingUnit => getField<String>('reading_unit');
  set readingUnit(String? value) => setField<String>('reading_unit', value);

  double? get latestValue => getField<double>('latest_value');
  set latestValue(double? value) => setField<double>('latest_value', value);

  DateTime? get latestTime => getField<DateTime>('latest_time');
  set latestTime(DateTime? value) => setField<DateTime>('latest_time', value);

  double? get lowCritical => getField<double>('low_critical');
  set lowCritical(double? value) => setField<double>('low_critical', value);

  double? get lowWarning => getField<double>('low_warning');
  set lowWarning(double? value) => setField<double>('low_warning', value);

  double? get highWarning => getField<double>('high_warning');
  set highWarning(double? value) => setField<double>('high_warning', value);

  double? get highCritical => getField<double>('high_critical');
  set highCritical(double? value) => setField<double>('high_critical', value);

  String? get currentStatus => getField<String>('current_status');
  set currentStatus(String? value) => setField<String>('current_status', value);

  String? get statusColor => getField<String>('status_color');
  set statusColor(String? value) => setField<String>('status_color', value);

  int? get alertsLast24h => getField<int>('alerts_last_24h');
  set alertsLast24h(int? value) => setField<int>('alerts_last_24h', value);
}
