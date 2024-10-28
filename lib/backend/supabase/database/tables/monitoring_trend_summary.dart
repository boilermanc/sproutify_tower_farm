import '../database.dart';

class MonitoringTrendSummaryTable
    extends SupabaseTable<MonitoringTrendSummaryRow> {
  @override
  String get tableName => 'monitoring_trend_summary';

  @override
  MonitoringTrendSummaryRow createRow(Map<String, dynamic> data) =>
      MonitoringTrendSummaryRow(data);
}

class MonitoringTrendSummaryRow extends SupabaseDataRow {
  MonitoringTrendSummaryRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => MonitoringTrendSummaryTable();

  String? get towerIdentifier => getField<String>('tower_identifier');
  set towerIdentifier(String? value) =>
      setField<String>('tower_identifier', value);

  String? get parameter => getField<String>('parameter');
  set parameter(String? value) => setField<String>('parameter', value);

  List<dynamic> get changes => getListField<dynamic>('changes');
  set changes(List<dynamic>? value) => setListField<dynamic>('changes', value);
}
