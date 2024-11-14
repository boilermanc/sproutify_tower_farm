import '../database.dart';

class DebugLogsTable extends SupabaseTable<DebugLogsRow> {
  @override
  String get tableName => 'debug_logs';

  @override
  DebugLogsRow createRow(Map<String, dynamic> data) => DebugLogsRow(data);
}

class DebugLogsRow extends SupabaseDataRow {
  DebugLogsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => DebugLogsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get step => getField<String>('step');
  set step(String? value) => setField<String>('step', value);

  dynamic? get dataField => getField<dynamic>('data');
  set dataField(dynamic? value) => setField<dynamic>('data', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
