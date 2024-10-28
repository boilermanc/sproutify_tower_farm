import '../database.dart';

class SensorTypesTable extends SupabaseTable<SensorTypesRow> {
  @override
  String get tableName => 'sensor_types';

  @override
  SensorTypesRow createRow(Map<String, dynamic> data) => SensorTypesRow(data);
}

class SensorTypesRow extends SupabaseDataRow {
  SensorTypesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SensorTypesTable();

  String get typeId => getField<String>('type_id')!;
  set typeId(String value) => setField<String>('type_id', value);

  String get sensorType => getField<String>('sensor_type')!;
  set sensorType(String value) => setField<String>('sensor_type', value);

  String get serialNumber => getField<String>('serial_number')!;
  set serialNumber(String value) => setField<String>('serial_number', value);

  String? get vendorName => getField<String>('vendor_name');
  set vendorName(String? value) => setField<String>('vendor_name', value);

  String? get vendorContactInfo => getField<String>('vendor_contact_info');
  set vendorContactInfo(String? value) =>
      setField<String>('vendor_contact_info', value);

  double? get pulseConversionFactor =>
      getField<double>('pulse_conversion_factor');
  set pulseConversionFactor(double? value) =>
      setField<double>('pulse_conversion_factor', value);

  String? get modelNumber => getField<String>('model_number');
  set modelNumber(String? value) => setField<String>('model_number', value);

  String? get sproutifyModel => getField<String>('sproutify_model');
  set sproutifyModel(String? value) =>
      setField<String>('sproutify_model', value);
}
