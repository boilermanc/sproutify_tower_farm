import '../database.dart';

class SensorsMacTable extends SupabaseTable<SensorsMacRow> {
  @override
  String get tableName => 'sensors_mac';

  @override
  SensorsMacRow createRow(Map<String, dynamic> data) => SensorsMacRow(data);
}

class SensorsMacRow extends SupabaseDataRow {
  SensorsMacRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SensorsMacTable();

  String get deviceId => getField<String>('device_id')!;
  set deviceId(String value) => setField<String>('device_id', value);

  String get macAddress => getField<String>('mac_address')!;
  set macAddress(String value) => setField<String>('mac_address', value);

  DateTime? get registeredAt => getField<DateTime>('registered_at');
  set registeredAt(DateTime? value) =>
      setField<DateTime>('registered_at', value);

  DateTime? get lastSeen => getField<DateTime>('last_seen');
  set lastSeen(DateTime? value) => setField<DateTime>('last_seen', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  bool? get isExisting => getField<bool>('is_existing');
  set isExisting(bool? value) => setField<bool>('is_existing', value);
}
