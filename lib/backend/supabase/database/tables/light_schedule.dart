import '../database.dart';

class LightScheduleTable extends SupabaseTable<LightScheduleRow> {
  @override
  String get tableName => 'light_schedule';

  @override
  LightScheduleRow createRow(Map<String, dynamic> data) =>
      LightScheduleRow(data);
}

class LightScheduleRow extends SupabaseDataRow {
  LightScheduleRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => LightScheduleTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get farmId => getField<String>('farm_id')!;
  set farmId(String value) => setField<String>('farm_id', value);

  PostgresTime? get onTime => getField<PostgresTime>('on_time');
  set onTime(PostgresTime? value) => setField<PostgresTime>('on_time', value);

  PostgresTime? get offTime => getField<PostgresTime>('off_time');
  set offTime(PostgresTime? value) => setField<PostgresTime>('off_time', value);

  bool get isActive => getField<bool>('is_active')!;
  set isActive(bool value) => setField<bool>('is_active', value);

  String get zoneId => getField<String>('zone_id')!;
  set zoneId(String value) => setField<String>('zone_id', value);

  int get dayOfWeek => getField<int>('day_of_week')!;
  set dayOfWeek(int value) => setField<int>('day_of_week', value);

  bool get isOffAllDay => getField<bool>('is_off_all_day')!;
  set isOffAllDay(bool value) => setField<bool>('is_off_all_day', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);
}
