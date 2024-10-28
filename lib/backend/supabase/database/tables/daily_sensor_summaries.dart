import '../database.dart';

class DailySensorSummariesTable extends SupabaseTable<DailySensorSummariesRow> {
  @override
  String get tableName => 'daily_sensor_summaries';

  @override
  DailySensorSummariesRow createRow(Map<String, dynamic> data) =>
      DailySensorSummariesRow(data);
}

class DailySensorSummariesRow extends SupabaseDataRow {
  DailySensorSummariesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => DailySensorSummariesTable();

  String get summaryId => getField<String>('summary_id')!;
  set summaryId(String value) => setField<String>('summary_id', value);

  String get sensorId => getField<String>('sensor_id')!;
  set sensorId(String value) => setField<String>('sensor_id', value);

  DateTime get date => getField<DateTime>('date')!;
  set date(DateTime value) => setField<DateTime>('date', value);

  double? get highHumidity => getField<double>('high_humidity');
  set highHumidity(double? value) => setField<double>('high_humidity', value);

  double? get lowHumidity => getField<double>('low_humidity');
  set lowHumidity(double? value) => setField<double>('low_humidity', value);

  double? get highTemperatureC => getField<double>('high_temperature_c');
  set highTemperatureC(double? value) =>
      setField<double>('high_temperature_c', value);

  double? get lowTemperatureC => getField<double>('low_temperature_c');
  set lowTemperatureC(double? value) =>
      setField<double>('low_temperature_c', value);

  double? get highTemperatureF => getField<double>('high_temperature_f');
  set highTemperatureF(double? value) =>
      setField<double>('high_temperature_f', value);

  double? get lowTemperatureF => getField<double>('low_temperature_f');
  set lowTemperatureF(double? value) =>
      setField<double>('low_temperature_f', value);

  DateTime? get timeOfHighTempC => getField<DateTime>('time_of_high_temp_c');
  set timeOfHighTempC(DateTime? value) =>
      setField<DateTime>('time_of_high_temp_c', value);

  DateTime? get timeOfLowTempC => getField<DateTime>('time_of_low_temp_c');
  set timeOfLowTempC(DateTime? value) =>
      setField<DateTime>('time_of_low_temp_c', value);

  DateTime? get timeOfHighTempF => getField<DateTime>('time_of_high_temp_f');
  set timeOfHighTempF(DateTime? value) =>
      setField<DateTime>('time_of_high_temp_f', value);

  DateTime? get timeOfLowTempF => getField<DateTime>('time_of_low_temp_f');
  set timeOfLowTempF(DateTime? value) =>
      setField<DateTime>('time_of_low_temp_f', value);

  DateTime? get timeOfHighHumidity =>
      getField<DateTime>('time_of_high_humidity');
  set timeOfHighHumidity(DateTime? value) =>
      setField<DateTime>('time_of_high_humidity', value);

  DateTime? get timeOfLowHumidity => getField<DateTime>('time_of_low_humidity');
  set timeOfLowHumidity(DateTime? value) =>
      setField<DateTime>('time_of_low_humidity', value);
}
