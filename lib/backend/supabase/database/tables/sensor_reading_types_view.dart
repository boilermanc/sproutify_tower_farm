import '../database.dart';

class SensorReadingTypesViewTable
    extends SupabaseTable<SensorReadingTypesViewRow> {
  @override
  String get tableName => 'sensor_reading_types_view';

  @override
  SensorReadingTypesViewRow createRow(Map<String, dynamic> data) =>
      SensorReadingTypesViewRow(data);
}

class SensorReadingTypesViewRow extends SupabaseDataRow {
  SensorReadingTypesViewRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SensorReadingTypesViewTable();

  String? get sensorId => getField<String>('sensor_id');
  set sensorId(String? value) => setField<String>('sensor_id', value);

  String? get sensorName => getField<String>('sensor_name');
  set sensorName(String? value) => setField<String>('sensor_name', value);

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);

  String? get typeId => getField<String>('type_id');
  set typeId(String? value) => setField<String>('type_id', value);

  String? get readingType => getField<String>('reading_type');
  set readingType(String? value) => setField<String>('reading_type', value);

  String? get displayName => getField<String>('display_name');
  set displayName(String? value) => setField<String>('display_name', value);

  String? get unitType => getField<String>('unit_type');
  set unitType(String? value) => setField<String>('unit_type', value);

  String? get displaySort => getField<String>('display_sort');
  set displaySort(String? value) => setField<String>('display_sort', value);
}
