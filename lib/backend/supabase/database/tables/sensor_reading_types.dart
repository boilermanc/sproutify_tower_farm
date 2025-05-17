import '../database.dart';

class SensorReadingTypesTable extends SupabaseTable<SensorReadingTypesRow> {
  @override
  String get tableName => 'sensor_reading_types';

  @override
  SensorReadingTypesRow createRow(Map<String, dynamic> data) =>
      SensorReadingTypesRow(data);
}

class SensorReadingTypesRow extends SupabaseDataRow {
  SensorReadingTypesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SensorReadingTypesTable();

  String get sensorId => getField<String>('sensor_id')!;
  set sensorId(String value) => setField<String>('sensor_id', value);

  String get readingType => getField<String>('reading_type')!;
  set readingType(String value) => setField<String>('reading_type', value);
}
