import '../database.dart';

class MonitoringIntelligenceTable
    extends SupabaseTable<MonitoringIntelligenceRow> {
  @override
  String get tableName => 'monitoring_intelligence';

  @override
  MonitoringIntelligenceRow createRow(Map<String, dynamic> data) =>
      MonitoringIntelligenceRow(data);
}

class MonitoringIntelligenceRow extends SupabaseDataRow {
  MonitoringIntelligenceRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => MonitoringIntelligenceTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get towerIdentifier => getField<String>('tower_identifier')!;
  set towerIdentifier(String value) =>
      setField<String>('tower_identifier', value);

  String get parameter => getField<String>('parameter')!;
  set parameter(String value) => setField<String>('parameter', value);

  String? get trendSummary => getField<String>('trend_summary');
  set trendSummary(String? value) => setField<String>('trend_summary', value);

  String? get actionSummary => getField<String>('action_summary');
  set actionSummary(String? value) => setField<String>('action_summary', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  dynamic? get rawData => getField<dynamic>('raw_data');
  set rawData(dynamic? value) => setField<dynamic>('raw_data', value);
}
