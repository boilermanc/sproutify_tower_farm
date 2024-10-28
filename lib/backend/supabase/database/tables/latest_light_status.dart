import '../database.dart';

class LatestLightStatusTable extends SupabaseTable<LatestLightStatusRow> {
  @override
  String get tableName => 'latest_light_status';

  @override
  LatestLightStatusRow createRow(Map<String, dynamic> data) =>
      LatestLightStatusRow(data);
}

class LatestLightStatusRow extends SupabaseDataRow {
  LatestLightStatusRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => LatestLightStatusTable();

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);

  String? get zoneId => getField<String>('zone_id');
  set zoneId(String? value) => setField<String>('zone_id', value);

  String? get zoneName => getField<String>('zone_name');
  set zoneName(String? value) => setField<String>('zone_name', value);

  DateTime? get eventTime => getField<DateTime>('event_time');
  set eventTime(DateTime? value) => setField<DateTime>('event_time', value);

  String? get eventType => getField<String>('event_type');
  set eventType(String? value) => setField<String>('event_type', value);
}
