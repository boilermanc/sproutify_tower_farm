import '../database.dart';

class LightingZoneSchedulesTable
    extends SupabaseTable<LightingZoneSchedulesRow> {
  @override
  String get tableName => 'lighting_zone_schedules';

  @override
  LightingZoneSchedulesRow createRow(Map<String, dynamic> data) =>
      LightingZoneSchedulesRow(data);
}

class LightingZoneSchedulesRow extends SupabaseDataRow {
  LightingZoneSchedulesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => LightingZoneSchedulesTable();

  String? get zoneId => getField<String>('zone_id');
  set zoneId(String? value) => setField<String>('zone_id', value);

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);

  String? get zoneName => getField<String>('zone_name');
  set zoneName(String? value) => setField<String>('zone_name', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  bool? get masterControlActive => getField<bool>('master_control_active');
  set masterControlActive(bool? value) =>
      setField<bool>('master_control_active', value);

  int? get relayPin => getField<int>('relay_pin');
  set relayPin(int? value) => setField<int>('relay_pin', value);

  int? get scheduleId => getField<int>('schedule_id');
  set scheduleId(int? value) => setField<int>('schedule_id', value);

  int? get dayOfWeek => getField<int>('day_of_week');
  set dayOfWeek(int? value) => setField<int>('day_of_week', value);

  PostgresTime? get onTime => getField<PostgresTime>('on_time');
  set onTime(PostgresTime? value) => setField<PostgresTime>('on_time', value);

  PostgresTime? get offTime => getField<PostgresTime>('off_time');
  set offTime(PostgresTime? value) => setField<PostgresTime>('off_time', value);

  bool? get isOffAllDay => getField<bool>('is_off_all_day');
  set isOffAllDay(bool? value) => setField<bool>('is_off_all_day', value);

  bool? get isActive => getField<bool>('is_active');
  set isActive(bool? value) => setField<bool>('is_active', value);
}
