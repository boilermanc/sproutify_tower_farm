import '../database.dart';

class MonitoringPageViewTable extends SupabaseTable<MonitoringPageViewRow> {
  @override
  String get tableName => 'monitoring_page_view';

  @override
  MonitoringPageViewRow createRow(Map<String, dynamic> data) =>
      MonitoringPageViewRow(data);
}

class MonitoringPageViewRow extends SupabaseDataRow {
  MonitoringPageViewRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => MonitoringPageViewTable();

  int? get towerId => getField<int>('tower_id');
  set towerId(int? value) => setField<int>('tower_id', value);

  String? get towerIdentifier => getField<String>('tower_identifier');
  set towerIdentifier(String? value) =>
      setField<String>('tower_identifier', value);

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);

  DateTime? get readAt => getField<DateTime>('read_at');
  set readAt(DateTime? value) => setField<DateTime>('read_at', value);

  String? get timeStatus => getField<String>('time_status');
  set timeStatus(String? value) => setField<String>('time_status', value);

  String? get ecStatus => getField<String>('ec_status');
  set ecStatus(String? value) => setField<String>('ec_status', value);

  String? get phStatus => getField<String>('ph_status');
  set phStatus(String? value) => setField<String>('ph_status', value);

  String? get statusColor => getField<String>('status_color');
  set statusColor(String? value) => setField<String>('status_color', value);
}
