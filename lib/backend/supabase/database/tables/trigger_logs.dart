import '../database.dart';

class TriggerLogsTable extends SupabaseTable<TriggerLogsRow> {
  @override
  String get tableName => 'trigger_logs';

  @override
  TriggerLogsRow createRow(Map<String, dynamic> data) => TriggerLogsRow(data);
}

class TriggerLogsRow extends SupabaseDataRow {
  TriggerLogsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TriggerLogsTable();

  int get logId => getField<int>('log_id')!;
  set logId(int value) => setField<int>('log_id', value);

  String? get logMessage => getField<String>('log_message');
  set logMessage(String? value) => setField<String>('log_message', value);

  DateTime? get logTime => getField<DateTime>('log_time');
  set logTime(DateTime? value) => setField<DateTime>('log_time', value);
}
