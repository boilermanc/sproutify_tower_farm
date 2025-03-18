import '../database.dart';

class SensorViewTable extends SupabaseTable<SensorViewRow> {
  @override
  String get tableName => 'sensor_view';

  @override
  SensorViewRow createRow(Map<String, dynamic> data) => SensorViewRow(data);
}

class SensorViewRow extends SupabaseDataRow {
  SensorViewRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SensorViewTable();

  String? get sensorId => getField<String>('sensor_id');
  set sensorId(String? value) => setField<String>('sensor_id', value);

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);

  String? get sensorName => getField<String>('sensor_name');
  set sensorName(String? value) => setField<String>('sensor_name', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

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

  String? get isActive => getField<String>('is_active');
  set isActive(String? value) => setField<String>('is_active', value);

  String? get readingType => getField<String>('reading_type');
  set readingType(String? value) => setField<String>('reading_type', value);

  double? get latestReadingValue => getField<double>('latest_reading_value');
  set latestReadingValue(double? value) =>
      setField<double>('latest_reading_value', value);

  DateTime? get lastSeen => getField<DateTime>('last_seen');
  set lastSeen(DateTime? value) => setField<DateTime>('last_seen', value);

  String? get readingTypeDisplayName =>
      getField<String>('reading_type_display_name');
  set readingTypeDisplayName(String? value) =>
      setField<String>('reading_type_display_name', value);

  String? get readingUnit => getField<String>('reading_unit');
  set readingUnit(String? value) => setField<String>('reading_unit', value);

  String? get displaySort => getField<String>('display_sort');
  set displaySort(String? value) => setField<String>('display_sort', value);

  String? get measurementSystem => getField<String>('measurement_system');
  set measurementSystem(String? value) =>
      setField<String>('measurement_system', value);
}
