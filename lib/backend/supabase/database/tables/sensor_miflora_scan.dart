import '../database.dart';

class SensorMifloraScanTable extends SupabaseTable<SensorMifloraScanRow> {
  @override
  String get tableName => 'sensor_miflora_scan';

  @override
  SensorMifloraScanRow createRow(Map<String, dynamic> data) =>
      SensorMifloraScanRow(data);
}

class SensorMifloraScanRow extends SupabaseDataRow {
  SensorMifloraScanRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SensorMifloraScanTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get hubId => getField<String>('hub_id');
  set hubId(String? value) => setField<String>('hub_id', value);

  String? get scanSessionId => getField<String>('scan_session_id');
  set scanSessionId(String? value) =>
      setField<String>('scan_session_id', value);

  String? get deviceAddress => getField<String>('device_address');
  set deviceAddress(String? value) => setField<String>('device_address', value);

  String? get deviceName => getField<String>('device_name');
  set deviceName(String? value) => setField<String>('device_name', value);

  int? get signalStrength => getField<int>('signal_strength');
  set signalStrength(int? value) => setField<int>('signal_strength', value);

  DateTime? get scanTimestamp => getField<DateTime>('scan_timestamp');
  set scanTimestamp(DateTime? value) =>
      setField<DateTime>('scan_timestamp', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);
}
