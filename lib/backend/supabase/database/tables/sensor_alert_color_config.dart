import '../database.dart';

class SensorAlertColorConfigTable
    extends SupabaseTable<SensorAlertColorConfigRow> {
  @override
  String get tableName => 'sensor_alert_color_config';

  @override
  SensorAlertColorConfigRow createRow(Map<String, dynamic> data) =>
      SensorAlertColorConfigRow(data);
}

class SensorAlertColorConfigRow extends SupabaseDataRow {
  SensorAlertColorConfigRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SensorAlertColorConfigTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get thresholdType => getField<String>('threshold_type')!;
  set thresholdType(String value) => setField<String>('threshold_type', value);

  String get colorHex => getField<String>('color_hex')!;
  set colorHex(String value) => setField<String>('color_hex', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  DateTime get updatedAt => getField<DateTime>('updated_at')!;
  set updatedAt(DateTime value) => setField<DateTime>('updated_at', value);
}
