import '../database.dart';

class SensorAlertHistoryViewTable
    extends SupabaseTable<SensorAlertHistoryViewRow> {
  @override
  String get tableName => 'sensor_alert_history_view';

  @override
  SensorAlertHistoryViewRow createRow(Map<String, dynamic> data) =>
      SensorAlertHistoryViewRow(data);
}

class SensorAlertHistoryViewRow extends SupabaseDataRow {
  SensorAlertHistoryViewRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SensorAlertHistoryViewTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);

  String? get sensorName => getField<String>('sensor_name');
  set sensorName(String? value) => setField<String>('sensor_name', value);

  String? get sensorId => getField<String>('sensor_id');
  set sensorId(String? value) => setField<String>('sensor_id', value);

  String? get readingType => getField<String>('reading_type');
  set readingType(String? value) => setField<String>('reading_type', value);

  String? get readingTypeDisplayName =>
      getField<String>('reading_type_display_name');
  set readingTypeDisplayName(String? value) =>
      setField<String>('reading_type_display_name', value);

  String? get readingUnit => getField<String>('reading_unit');
  set readingUnit(String? value) => setField<String>('reading_unit', value);

  double? get readingValue => getField<double>('reading_value');
  set readingValue(double? value) => setField<double>('reading_value', value);

  String? get thresholdType => getField<String>('threshold_type');
  set thresholdType(String? value) => setField<String>('threshold_type', value);

  String? get alertColor => getField<String>('alert_color');
  set alertColor(String? value) => setField<String>('alert_color', value);

  DateTime? get alertTime => getField<DateTime>('alert_time');
  set alertTime(DateTime? value) => setField<DateTime>('alert_time', value);

  bool? get notificationSent => getField<bool>('notification_sent');
  set notificationSent(bool? value) =>
      setField<bool>('notification_sent', value);

  DateTime? get notificationSentAt =>
      getField<DateTime>('notification_sent_at');
  set notificationSentAt(DateTime? value) =>
      setField<DateTime>('notification_sent_at', value);
}
