import '../database.dart';

class LightingZoneSchedulesWithDaysTable
    extends SupabaseTable<LightingZoneSchedulesWithDaysRow> {
  @override
  String get tableName => 'lighting_zone_schedules_with_days';

  @override
  LightingZoneSchedulesWithDaysRow createRow(Map<String, dynamic> data) =>
      LightingZoneSchedulesWithDaysRow(data);
}

class LightingZoneSchedulesWithDaysRow extends SupabaseDataRow {
  LightingZoneSchedulesWithDaysRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => LightingZoneSchedulesWithDaysTable();

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

  int? get scheduleId => getField<int>('schedule_id');
  set scheduleId(int? value) => setField<int>('schedule_id', value);

  int? get dayOfWeek => getField<int>('day_of_week');
  set dayOfWeek(int? value) => setField<int>('day_of_week', value);

  String? get dayName => getField<String>('day_name');
  set dayName(String? value) => setField<String>('day_name', value);

  PostgresTime? get onTime => getField<PostgresTime>('on_time');
  set onTime(PostgresTime? value) => setField<PostgresTime>('on_time', value);

  PostgresTime? get offTime => getField<PostgresTime>('off_time');
  set offTime(PostgresTime? value) => setField<PostgresTime>('off_time', value);

  bool? get isOffAllDay => getField<bool>('is_off_all_day');
  set isOffAllDay(bool? value) => setField<bool>('is_off_all_day', value);

  bool? get isActive => getField<bool>('is_active');
  set isActive(bool? value) => setField<bool>('is_active', value);
}
