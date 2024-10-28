import '../database.dart';

class SensorReadingsTable extends SupabaseTable<SensorReadingsRow> {
  @override
  String get tableName => 'sensor_readings';

  @override
  SensorReadingsRow createRow(Map<String, dynamic> data) =>
      SensorReadingsRow(data);
}

class SensorReadingsRow extends SupabaseDataRow {
  SensorReadingsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SensorReadingsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get sensorId => getField<String>('sensor_id')!;
  set sensorId(String value) => setField<String>('sensor_id', value);

  String get readingType => getField<String>('reading_type')!;
  set readingType(String value) => setField<String>('reading_type', value);

  double get value => getField<double>('value')!;
  set value(double value) => setField<double>('value', value);

  DateTime get time => getField<DateTime>('time')!;
  set time(DateTime value) => setField<DateTime>('time', value);

  DateTime get timeWithoutTz => getField<DateTime>('time_without_tz')!;
  set timeWithoutTz(DateTime value) =>
      setField<DateTime>('time_without_tz', value);

  DateTime? get flowTime => getField<DateTime>('flow_time');
  set flowTime(DateTime? value) => setField<DateTime>('flow_time', value);
}
