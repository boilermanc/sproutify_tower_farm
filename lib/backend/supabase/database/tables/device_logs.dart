import '../database.dart';

class DeviceLogsTable extends SupabaseTable<DeviceLogsRow> {
  @override
  String get tableName => 'device_logs';

  @override
  DeviceLogsRow createRow(Map<String, dynamic> data) => DeviceLogsRow(data);
}

class DeviceLogsRow extends SupabaseDataRow {
  DeviceLogsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => DeviceLogsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get farmId => getField<String>('farm_id')!;
  set farmId(String value) => setField<String>('farm_id', value);

  String get controllerId => getField<String>('controller_id')!;
  set controllerId(String value) => setField<String>('controller_id', value);

  String get logLevel => getField<String>('log_level')!;
  set logLevel(String value) => setField<String>('log_level', value);

  String get message => getField<String>('message')!;
  set message(String value) => setField<String>('message', value);

  DateTime? get logTime => getField<DateTime>('log_time');
  set logTime(DateTime? value) => setField<DateTime>('log_time', value);

  int? get freeHeap => getField<int>('free_heap');
  set freeHeap(int? value) => setField<int>('free_heap', value);

  int? get wifiStrength => getField<int>('wifi_strength');
  set wifiStrength(int? value) => setField<int>('wifi_strength', value);
}
