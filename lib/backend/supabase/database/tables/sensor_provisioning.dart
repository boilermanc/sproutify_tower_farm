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

  String? get location => getField<String>('location');
  set location(String? value) => setField<String>('location', value);

  String? get sproutifyModel => getField<String>('sproutify_model');
  set sproutifyModel(String? value) =>
      setField<String>('sproutify_model', value);
}
