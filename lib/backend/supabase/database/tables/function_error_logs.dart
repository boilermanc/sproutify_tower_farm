import '../database.dart';

class FunctionErrorLogsTable extends SupabaseTable<FunctionErrorLogsRow> {
  @override
  String get tableName => 'function_error_logs';

  @override
  FunctionErrorLogsRow createRow(Map<String, dynamic> data) =>
      FunctionErrorLogsRow(data);
}

class FunctionErrorLogsRow extends SupabaseDataRow {
  FunctionErrorLogsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => FunctionErrorLogsTable();

  int get logId => getField<int>('log_id')!;
  set logId(int value) => setField<int>('log_id', value);

  String get errorMessage => getField<String>('error_message')!;
  set errorMessage(String value) => setField<String>('error_message', value);

  DateTime? get logTime => getField<DateTime>('log_time');
  set logTime(DateTime? value) => setField<DateTime>('log_time', value);
}
