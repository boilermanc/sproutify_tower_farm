import '../database.dart';

class SensorProvisioningTable extends SupabaseTable<SensorProvisioningRow> {
  @override
  String get tableName => 'sensor_provisioning';

  @override
  SensorProvisioningRow createRow(Map<String, dynamic> data) =>
      SensorProvisioningRow(data);
}

class SensorProvisioningRow extends SupabaseDataRow {
  SensorProvisioningRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SensorProvisioningTable();

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

  String? get sproutifyModel => getField<String>('sproutify_model');
  set sproutifyModel(String? value) =>
      setField<String>('sproutify_model', value);

  String get status => getField<String>('status')!;
  set status(String value) => setField<String>('status', value);

  String? get setupCode => getField<String>('setup_code');
  set setupCode(String? value) => setField<String>('setup_code', value);

  String? get macAddress => getField<String>('mac_address');
  set macAddress(String? value) => setField<String>('mac_address', value);

  String? get locationId => getField<String>('location_id');
  set locationId(String? value) => setField<String>('location_id', value);

  String? get sensorColor => getField<String>('sensor_color');
  set sensorColor(String? value) => setField<String>('sensor_color', value);

  String? get sensorId => getField<String>('sensor_id');
  set sensorId(String? value) => setField<String>('sensor_id', value);
}
