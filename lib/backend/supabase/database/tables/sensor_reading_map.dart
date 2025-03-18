import '../database.dart';

class SensorReadingMapTable extends SupabaseTable<SensorReadingMapRow> {
  @override
  String get tableName => 'sensor_reading_map';

  @override
  SensorReadingMapRow createRow(Map<String, dynamic> data) =>
      SensorReadingMapRow(data);
}

class SensorReadingMapRow extends SupabaseDataRow {
  SensorReadingMapRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SensorReadingMapTable();

  String get sensorTypeId => getField<String>('sensor_type_id')!;
  set sensorTypeId(String value) => setField<String>('sensor_type_id', value);

  String get readingType => getField<String>('reading_type')!;
  set readingType(String value) => setField<String>('reading_type', value);
}
