import '../database.dart';

class MonitoringIntelligenceViewTable
    extends SupabaseTable<MonitoringIntelligenceViewRow> {
  @override
  String get tableName => 'monitoring_intelligence_view';

  @override
  MonitoringIntelligenceViewRow createRow(Map<String, dynamic> data) =>
      MonitoringIntelligenceViewRow(data);
}

class MonitoringIntelligenceViewRow extends SupabaseDataRow {
  MonitoringIntelligenceViewRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => MonitoringIntelligenceViewTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  String? get towerIdentifier => getField<String>('tower_identifier');
  set towerIdentifier(String? value) =>
      setField<String>('tower_identifier', value);

  String? get parameter => getField<String>('parameter');
  set parameter(String? value) => setField<String>('parameter', value);

  String? get severity => getField<String>('severity');
  set severity(String? value) => setField<String>('severity', value);

  String? get trendSummary => getField<String>('trend_summary');
  set trendSummary(String? value) => setField<String>('trend_summary', value);

  String? get actionSummary => getField<String>('action_summary');
  set actionSummary(String? value) => setField<String>('action_summary', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  dynamic? get rawData => getField<dynamic>('raw_data');
  set rawData(dynamic? value) => setField<dynamic>('raw_data', value);

  String? get statusMessage => getField<String>('status_message');
  set statusMessage(String? value) => setField<String>('status_message', value);

  String? get towerGroup => getField<String>('tower_group');
  set towerGroup(String? value) => setField<String>('tower_group', value);

  String? get towerNumber => getField<String>('tower_number');
  set towerNumber(String? value) => setField<String>('tower_number', value);
}
