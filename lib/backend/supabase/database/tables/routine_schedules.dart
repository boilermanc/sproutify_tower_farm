import '../database.dart';

class RoutineSchedulesTable extends SupabaseTable<RoutineSchedulesRow> {
  @override
  String get tableName => 'routine_schedules';

  @override
  RoutineSchedulesRow createRow(Map<String, dynamic> data) =>
      RoutineSchedulesRow(data);
}

class RoutineSchedulesRow extends SupabaseDataRow {
  RoutineSchedulesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => RoutineSchedulesTable();

  String get scheduleId => getField<String>('schedule_id')!;
  set scheduleId(String value) => setField<String>('schedule_id', value);

  String get farmId => getField<String>('farm_id')!;
  set farmId(String value) => setField<String>('farm_id', value);

  String get userId => getField<String>('user_id')!;
  set userId(String value) => setField<String>('user_id', value);

  String get activityType => getField<String>('activity_type')!;
  set activityType(String value) => setField<String>('activity_type', value);

  DateTime get scheduledDate => getField<DateTime>('scheduled_date')!;
  set scheduledDate(DateTime value) =>
      setField<DateTime>('scheduled_date', value);

  String get frequency => getField<String>('frequency')!;
  set frequency(String value) => setField<String>('frequency', value);

  String? get notes => getField<String>('notes');
  set notes(String? value) => setField<String>('notes', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  DateTime get updatedAt => getField<DateTime>('updated_at')!;
  set updatedAt(DateTime value) => setField<DateTime>('updated_at', value);

  String? get activityColor => getField<String>('activity_color');
  set activityColor(String? value) => setField<String>('activity_color', value);
}
