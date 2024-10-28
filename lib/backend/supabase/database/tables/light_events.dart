import '../database.dart';

class LightEventsTable extends SupabaseTable<LightEventsRow> {
  @override
  String get tableName => 'light_events';

  @override
  LightEventsRow createRow(Map<String, dynamic> data) => LightEventsRow(data);
}

class LightEventsRow extends SupabaseDataRow {
  LightEventsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => LightEventsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get farmId => getField<String>('farm_id')!;
  set farmId(String value) => setField<String>('farm_id', value);

  DateTime get eventTime => getField<DateTime>('event_time')!;
  set eventTime(DateTime value) => setField<DateTime>('event_time', value);

  String get eventType => getField<String>('event_type')!;
  set eventType(String value) => setField<String>('event_type', value);

  String get controllerId => getField<String>('controller_id')!;
  set controllerId(String value) => setField<String>('controller_id', value);

  String get zoneId => getField<String>('zone_id')!;
  set zoneId(String value) => setField<String>('zone_id', value);
}
