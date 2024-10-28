import '../database.dart';

class MonitoringReportsTable extends SupabaseTable<MonitoringReportsRow> {
  @override
  String get tableName => 'monitoring_reports';

  @override
  MonitoringReportsRow createRow(Map<String, dynamic> data) =>
      MonitoringReportsRow(data);
}

class MonitoringReportsRow extends SupabaseDataRow {
  MonitoringReportsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => MonitoringReportsTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get reportLink => getField<String>('report_link')!;
  set reportLink(String value) => setField<String>('report_link', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  dynamic? get reportData => getField<dynamic>('report_data');
  set reportData(dynamic? value) => setField<dynamic>('report_data', value);
}
