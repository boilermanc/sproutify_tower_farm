import '../database.dart';

class SensorAlertThresholdsTable
    extends SupabaseTable<SensorAlertThresholdsRow> {
  @override
  String get tableName => 'sensor_alert_thresholds';

  @override
  SensorAlertThresholdsRow createRow(Map<String, dynamic> data) =>
      SensorAlertThresholdsRow(data);
}

class SensorAlertThresholdsRow extends SupabaseDataRow {
  SensorAlertThresholdsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SensorAlertThresholdsTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get sensorId => getField<String>('sensor_id')!;
  set sensorId(String value) => setField<String>('sensor_id', value);

  String get readingType => getField<String>('reading_type')!;
  set readingType(String value) => setField<String>('reading_type', value);

  String get farmId => getField<String>('farm_id')!;
  set farmId(String value) => setField<String>('farm_id', value);

  String get createdBy => getField<String>('created_by')!;
  set createdBy(String value) => setField<String>('created_by', value);

  double get lowCritical => getField<double>('low_critical')!;
  set lowCritical(double value) => setField<double>('low_critical', value);

  double get lowWarning => getField<double>('low_warning')!;
  set lowWarning(double value) => setField<double>('low_warning', value);

  double get highWarning => getField<double>('high_warning')!;
  set highWarning(double value) => setField<double>('high_warning', value);

  double get highCritical => getField<double>('high_critical')!;
  set highCritical(double value) => setField<double>('high_critical', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  DateTime get updatedAt => getField<DateTime>('updated_at')!;
  set updatedAt(DateTime value) => setField<DateTime>('updated_at', value);

  String get updatedBy => getField<String>('updated_by')!;
  set updatedBy(String value) => setField<String>('updated_by', value);
}
