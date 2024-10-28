import '../database.dart';

class LightStateLogsTable extends SupabaseTable<LightStateLogsRow> {
  @override
  String get tableName => 'light_state_logs';

  @override
  LightStateLogsRow createRow(Map<String, dynamic> data) =>
      LightStateLogsRow(data);
}

class LightStateLogsRow extends SupabaseDataRow {
  LightStateLogsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => LightStateLogsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get farmId => getField<String>('farm_id')!;
  set farmId(String value) => setField<String>('farm_id', value);

  String get controllerId => getField<String>('controller_id')!;
  set controllerId(String value) => setField<String>('controller_id', value);

  bool get lightsOn => getField<bool>('lights_on')!;
  set lightsOn(bool value) => setField<bool>('lights_on', value);

  DateTime get logTime => getField<DateTime>('log_time')!;
  set logTime(DateTime value) => setField<DateTime>('log_time', value);

  PostgresTime get scheduledOnTime =>
      getField<PostgresTime>('scheduled_on_time')!;
  set scheduledOnTime(PostgresTime value) =>
      setField<PostgresTime>('scheduled_on_time', value);

  PostgresTime get scheduledOffTime =>
      getField<PostgresTime>('scheduled_off_time')!;
  set scheduledOffTime(PostgresTime value) =>
      setField<PostgresTime>('scheduled_off_time', value);

  DateTime? get lastSuccessfulLog => getField<DateTime>('last_successful_log');
  set lastSuccessfulLog(DateTime? value) =>
      setField<DateTime>('last_successful_log', value);

  bool get wifiConnected => getField<bool>('wifi_connected')!;
  set wifiConnected(bool value) => setField<bool>('wifi_connected', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
