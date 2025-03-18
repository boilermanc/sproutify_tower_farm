import '../database.dart';

class SensorReadingsMifloraTable
    extends SupabaseTable<SensorReadingsMifloraRow> {
  @override
  String get tableName => 'sensor_readings_miflora';

  @override
  SensorReadingsMifloraRow createRow(Map<String, dynamic> data) =>
      SensorReadingsMifloraRow(data);
}

class SensorReadingsMifloraRow extends SupabaseDataRow {
  SensorReadingsMifloraRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SensorReadingsMifloraTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get gatewayMac => getField<String>('gateway_mac')!;
  set gatewayMac(String value) => setField<String>('gateway_mac', value);

  String get sensorBleMac => getField<String>('sensor_ble_mac')!;
  set sensorBleMac(String value) => setField<String>('sensor_ble_mac', value);

  String get readingType => getField<String>('reading_type')!;
  set readingType(String value) => setField<String>('reading_type', value);

  double get value => getField<double>('value')!;
  set value(double value) => setField<double>('value', value);

  DateTime get time => getField<DateTime>('time')!;
  set time(DateTime value) => setField<DateTime>('time', value);

  DateTime get timeWithoutTz => getField<DateTime>('time_without_tz')!;
  set timeWithoutTz(DateTime value) =>
      setField<DateTime>('time_without_tz', value);
}
