import '../database.dart';

class SensorsTable extends SupabaseTable<SensorsRow> {
  @override
  String get tableName => 'sensors';

  @override
  SensorsRow createRow(Map<String, dynamic> data) => SensorsRow(data);
}

class SensorsRow extends SupabaseDataRow {
  SensorsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SensorsTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

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

  bool get isActive => getField<bool>('is_active')!;
  set isActive(bool value) => setField<bool>('is_active', value);

  DateTime? get lastSeen => getField<DateTime>('last_seen');
  set lastSeen(DateTime? value) => setField<DateTime>('last_seen', value);

  String? get readingType => getField<String>('reading_type');
  set readingType(String? value) => setField<String>('reading_type', value);

  String? get locationId => getField<String>('location_id');
  set locationId(String? value) => setField<String>('location_id', value);

  String? get sensorColor => getField<String>('sensor_color');
  set sensorColor(String? value) => setField<String>('sensor_color', value);
}
