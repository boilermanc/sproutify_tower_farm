import '../database.dart';

class MonitoringReadingChangeLogTable
    extends SupabaseTable<MonitoringReadingChangeLogRow> {
  @override
  String get tableName => 'monitoring_reading_change_log';

  @override
  MonitoringReadingChangeLogRow createRow(Map<String, dynamic> data) =>
      MonitoringReadingChangeLogRow(data);
}

class MonitoringReadingChangeLogRow extends SupabaseDataRow {
  MonitoringReadingChangeLogRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => MonitoringReadingChangeLogTable();

  int get changeId => getField<int>('change_id')!;
  set changeId(int value) => setField<int>('change_id', value);

  String get farmId => getField<String>('farm_id')!;
  set farmId(String value) => setField<String>('farm_id', value);

  int get towerId => getField<int>('tower_id')!;
  set towerId(int value) => setField<int>('tower_id', value);

  String get towerIdentifier => getField<String>('tower_identifier')!;
  set towerIdentifier(String value) =>
      setField<String>('tower_identifier', value);

  String get parameter => getField<String>('parameter')!;
  set parameter(String value) => setField<String>('parameter', value);

  String get previousValue => getField<String>('previous_value')!;
  set previousValue(String value) => setField<String>('previous_value', value);

  String get updatedValue => getField<String>('updated_value')!;
  set updatedValue(String value) => setField<String>('updated_value', value);

  DateTime get changeTimestamp => getField<DateTime>('change_timestamp')!;
  set changeTimestamp(DateTime value) =>
      setField<DateTime>('change_timestamp', value);

  String get changedBy => getField<String>('changed_by')!;
  set changedBy(String value) => setField<String>('changed_by', value);
}
