import '../database.dart';

class SensorReadingsCompiledTable
    extends SupabaseTable<SensorReadingsCompiledRow> {
  @override
  String get tableName => 'sensor_readings_compiled';

  @override
  SensorReadingsCompiledRow createRow(Map<String, dynamic> data) =>
      SensorReadingsCompiledRow(data);
}

class SensorReadingsCompiledRow extends SupabaseDataRow {
  SensorReadingsCompiledRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SensorReadingsCompiledTable();

  int? get readingId => getField<int>('reading_id');
  set readingId(int? value) => setField<int>('reading_id', value);

  String? get sensorId => getField<String>('sensor_id');
  set sensorId(String? value) => setField<String>('sensor_id', value);

  String? get readingType => getField<String>('reading_type');
  set readingType(String? value) => setField<String>('reading_type', value);

  double? get value => getField<double>('value');
  set value(double? value) => setField<double>('value', value);

  DateTime? get time => getField<DateTime>('time');
  set time(DateTime? value) => setField<DateTime>('time', value);

  DateTime? get timeWithoutTz => getField<DateTime>('time_without_tz');
  set timeWithoutTz(DateTime? value) =>
      setField<DateTime>('time_without_tz', value);

  DateTime? get flowTime => getField<DateTime>('flow_time');
  set flowTime(DateTime? value) => setField<DateTime>('flow_time', value);

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);

  String? get sensorName => getField<String>('sensor_name');
  set sensorName(String? value) => setField<String>('sensor_name', value);

  DateTime? get sensorCreatedAt => getField<DateTime>('sensor_created_at');
  set sensorCreatedAt(DateTime? value) =>
      setField<DateTime>('sensor_created_at', value);

  DateTime? get sensorUpdatedAt => getField<DateTime>('sensor_updated_at');
  set sensorUpdatedAt(DateTime? value) =>
      setField<DateTime>('sensor_updated_at', value);

  String? get typeId => getField<String>('type_id');
  set typeId(String? value) => setField<String>('type_id', value);

  String? get location => getField<String>('location');
  set location(String? value) => setField<String>('location', value);

  double? get calibrationFactor => getField<double>('calibration_factor');
  set calibrationFactor(double? value) =>
      setField<double>('calibration_factor', value);

  String? get sensorType => getField<String>('sensor_type');
  set sensorType(String? value) => setField<String>('sensor_type', value);

  String? get vendorName => getField<String>('vendor_name');
  set vendorName(String? value) => setField<String>('vendor_name', value);

  String? get modelNumber => getField<String>('model_number');
  set modelNumber(String? value) => setField<String>('model_number', value);

  String? get sproutifyModel => getField<String>('sproutify_model');
  set sproutifyModel(String? value) =>
      setField<String>('sproutify_model', value);

  String? get macAddress => getField<String>('mac_address');
  set macAddress(String? value) => setField<String>('mac_address', value);
}
