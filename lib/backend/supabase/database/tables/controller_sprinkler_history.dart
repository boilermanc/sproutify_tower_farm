import '../database.dart';

class ControllerSprinklerHistoryTable
    extends SupabaseTable<ControllerSprinklerHistoryRow> {
  @override
  String get tableName => 'controller_sprinkler_history';

  @override
  ControllerSprinklerHistoryRow createRow(Map<String, dynamic> data) =>
      ControllerSprinklerHistoryRow(data);
}

class ControllerSprinklerHistoryRow extends SupabaseDataRow {
  ControllerSprinklerHistoryRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ControllerSprinklerHistoryTable();

  String get historyId => getField<String>('history_id')!;
  set historyId(String value) => setField<String>('history_id', value);

  String get commandId => getField<String>('command_id')!;
  set commandId(String value) => setField<String>('command_id', value);

  String get controllerId => getField<String>('controller_id')!;
  set controllerId(String value) => setField<String>('controller_id', value);

  String? get macAddress => getField<String>('mac_address');
  set macAddress(String? value) => setField<String>('mac_address', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get location => getField<String>('location');
  set location(String? value) => setField<String>('location', value);

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);

  String get command => getField<String>('command')!;
  set command(String value) => setField<String>('command', value);

  int get durationSeconds => getField<int>('duration_seconds')!;
  set durationSeconds(int value) => setField<int>('duration_seconds', value);

  int? get durationMinutes => getField<int>('duration_minutes');
  set durationMinutes(int? value) => setField<int>('duration_minutes', value);

  DateTime? get scheduledAt => getField<DateTime>('scheduled_at');
  set scheduledAt(DateTime? value) => setField<DateTime>('scheduled_at', value);

  String get status => getField<String>('status')!;
  set status(String value) => setField<String>('status', value);

  DateTime? get sentAt => getField<DateTime>('sent_at');
  set sentAt(DateTime? value) => setField<DateTime>('sent_at', value);

  DateTime? get acknowledgedAt => getField<DateTime>('acknowledged_at');
  set acknowledgedAt(DateTime? value) =>
      setField<DateTime>('acknowledged_at', value);

  DateTime? get recordedAt => getField<DateTime>('recorded_at');
  set recordedAt(DateTime? value) => setField<DateTime>('recorded_at', value);
}
