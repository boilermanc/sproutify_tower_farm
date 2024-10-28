import '../database.dart';

class MonitoringTowerReadingsTable
    extends SupabaseTable<MonitoringTowerReadingsRow> {
  @override
  String get tableName => 'monitoring_tower_readings';

  @override
  MonitoringTowerReadingsRow createRow(Map<String, dynamic> data) =>
      MonitoringTowerReadingsRow(data);
}

class MonitoringTowerReadingsRow extends SupabaseDataRow {
  MonitoringTowerReadingsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => MonitoringTowerReadingsTable();

  int get readingId => getField<int>('reading_id')!;
  set readingId(int value) => setField<int>('reading_id', value);

  String get farmId => getField<String>('farm_id')!;
  set farmId(String value) => setField<String>('farm_id', value);

  int get towerId => getField<int>('tower_id')!;
  set towerId(int value) => setField<int>('tower_id', value);

  String get towerIdentifier => getField<String>('tower_identifier')!;
  set towerIdentifier(String value) =>
      setField<String>('tower_identifier', value);

  String get phColor => getField<String>('ph_color')!;
  set phColor(String value) => setField<String>('ph_color', value);

  String get ecStatus => getField<String>('ec_status')!;
  set ecStatus(String value) => setField<String>('ec_status', value);

  DateTime get readAt => getField<DateTime>('read_at')!;
  set readAt(DateTime value) => setField<DateTime>('read_at', value);

  String get readBy => getField<String>('read_by')!;
  set readBy(String value) => setField<String>('read_by', value);
}
