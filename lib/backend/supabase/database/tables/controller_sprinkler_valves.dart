import '../database.dart';

class ControllerSprinklerValvesTable
    extends SupabaseTable<ControllerSprinklerValvesRow> {
  @override
  String get tableName => 'controller_sprinkler_valves';

  @override
  ControllerSprinklerValvesRow createRow(Map<String, dynamic> data) =>
      ControllerSprinklerValvesRow(data);
}

class ControllerSprinklerValvesRow extends SupabaseDataRow {
  ControllerSprinklerValvesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ControllerSprinklerValvesTable();

  String get commandId => getField<String>('command_id')!;
  set commandId(String value) => setField<String>('command_id', value);

  String get controllerId => getField<String>('controller_id')!;
  set controllerId(String value) => setField<String>('controller_id', value);

  String? get macAddress => getField<String>('mac_address');
  set macAddress(String? value) => setField<String>('mac_address', value);

  String get command => getField<String>('command')!;
  set command(String value) => setField<String>('command', value);

  int get durationSeconds => getField<int>('duration_seconds')!;
  set durationSeconds(int value) => setField<int>('duration_seconds', value);

  DateTime? get scheduledAt => getField<DateTime>('scheduled_at');
  set scheduledAt(DateTime? value) => setField<DateTime>('scheduled_at', value);

  String get status => getField<String>('status')!;
  set status(String value) => setField<String>('status', value);

  DateTime? get sentAt => getField<DateTime>('sent_at');
  set sentAt(DateTime? value) => setField<DateTime>('sent_at', value);

  DateTime? get acknowledgedAt => getField<DateTime>('acknowledged_at');
  set acknowledgedAt(DateTime? value) =>
      setField<DateTime>('acknowledged_at', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get location => getField<String>('location');
  set location(String? value) => setField<String>('location', value);

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);

  int? get durationMinutes => getField<int>('duration_minutes');
  set durationMinutes(int? value) => setField<int>('duration_minutes', value);
}
