import '../database.dart';

class FunctionExecutionLogsTable
    extends SupabaseTable<FunctionExecutionLogsRow> {
  @override
  String get tableName => 'function_execution_logs';

  @override
  FunctionExecutionLogsRow createRow(Map<String, dynamic> data) =>
      FunctionExecutionLogsRow(data);
}

class FunctionExecutionLogsRow extends SupabaseDataRow {
  FunctionExecutionLogsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => FunctionExecutionLogsTable();

  int get logId => getField<int>('log_id')!;
  set logId(int value) => setField<int>('log_id', value);

  String get logMessage => getField<String>('log_message')!;
  set logMessage(String value) => setField<String>('log_message', value);

  DateTime? get logTime => getField<DateTime>('log_time');
  set logTime(DateTime? value) => setField<DateTime>('log_time', value);
}
