import '../database.dart';

class LightingMobileViewTable extends SupabaseTable<LightingMobileViewRow> {
  @override
  String get tableName => 'lighting_mobile_view';

  @override
  LightingMobileViewRow createRow(Map<String, dynamic> data) =>
      LightingMobileViewRow(data);
}

class LightingMobileViewRow extends SupabaseDataRow {
  LightingMobileViewRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => LightingMobileViewTable();

  String? get zoneId => getField<String>('zone_id');
  set zoneId(String? value) => setField<String>('zone_id', value);

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);

  String? get zoneName => getField<String>('zone_name');
  set zoneName(String? value) => setField<String>('zone_name', value);

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

  String? get currentStatus => getField<String>('current_status');
  set currentStatus(String? value) => setField<String>('current_status', value);

  DateTime? get statusUpdatedAt => getField<DateTime>('status_updated_at');
  set statusUpdatedAt(DateTime? value) =>
      setField<DateTime>('status_updated_at', value);

  String? get scheduleDisplay => getField<String>('schedule_display');
  set scheduleDisplay(String? value) =>
      setField<String>('schedule_display', value);
}
