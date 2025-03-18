import '../database.dart';

class SensorAlertLogsTable extends SupabaseTable<SensorAlertLogsRow> {
  @override
  String get tableName => 'sensor_alert_logs';

  @override
  SensorAlertLogsRow createRow(Map<String, dynamic> data) =>
      SensorAlertLogsRow(data);
}

class SensorAlertLogsRow extends SupabaseDataRow {
  SensorAlertLogsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SensorAlertLogsTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get sensorId => getField<String>('sensor_id')!;
  set sensorId(String value) => setField<String>('sensor_id', value);

  String get farmId => getField<String>('farm_id')!;
  set farmId(String value) => setField<String>('farm_id', value);

  String get readingType => getField<String>('reading_type')!;
  set readingType(String value) => setField<String>('reading_type', value);

  double get readingValue => getField<double>('reading_value')!;
  set readingValue(double value) => setField<double>('reading_value', value);

  String get thresholdType => getField<String>('threshold_type')!;
  set thresholdType(String value) => setField<String>('threshold_type', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  bool get notificationSent => getField<bool>('notification_sent')!;
  set notificationSent(bool value) =>
      setField<bool>('notification_sent', value);

  DateTime? get notificationSentAt =>
      getField<DateTime>('notification_sent_at');
  set notificationSentAt(DateTime? value) =>
      setField<DateTime>('notification_sent_at', value);
}
