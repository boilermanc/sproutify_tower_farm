import '../database.dart';

class MonitoringTowerDashboardFixedTable
    extends SupabaseTable<MonitoringTowerDashboardFixedRow> {
  @override
  String get tableName => 'monitoring_tower_dashboard_fixed';

  @override
  MonitoringTowerDashboardFixedRow createRow(Map<String, dynamic> data) =>
      MonitoringTowerDashboardFixedRow(data);
}

class MonitoringTowerDashboardFixedRow extends SupabaseDataRow {
  MonitoringTowerDashboardFixedRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => MonitoringTowerDashboardFixedTable();

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);

  int? get towerId => getField<int>('tower_id');
  set towerId(int? value) => setField<int>('tower_id', value);

  int? get rowNumber => getField<int>('row_number');
  set rowNumber(int? value) => setField<int>('row_number', value);

  int? get towerNumberWithinRow => getField<int>('tower_number_within_row');
  set towerNumberWithinRow(int? value) =>
      setField<int>('tower_number_within_row', value);

  String? get towerIdentifier => getField<String>('tower_identifier');
  set towerIdentifier(String? value) =>
      setField<String>('tower_identifier', value);

  String? get phColor => getField<String>('ph_color');
  set phColor(String? value) => setField<String>('ph_color', value);

  String? get phColorHex => getField<String>('ph_color_hex');
  set phColorHex(String? value) => setField<String>('ph_color_hex', value);

  double? get phValue => getField<double>('ph_value');
  set phValue(double? value) => setField<double>('ph_value', value);

  DateTime? get phReadAt => getField<DateTime>('ph_read_at');
  set phReadAt(DateTime? value) => setField<DateTime>('ph_read_at', value);

  String? get ecStatus => getField<String>('ec_status');
  set ecStatus(String? value) => setField<String>('ec_status', value);

  String? get ecStatusDisplay => getField<String>('ec_status_display');
  set ecStatusDisplay(String? value) =>
      setField<String>('ec_status_display', value);

  double? get ecValue => getField<double>('ec_value');
  set ecValue(double? value) => setField<double>('ec_value', value);

  DateTime? get ecReadAt => getField<DateTime>('ec_read_at');
  set ecReadAt(DateTime? value) => setField<DateTime>('ec_read_at', value);

  String? get ecRange => getField<String>('ec_range');
  set ecRange(String? value) => setField<String>('ec_range', value);

  String? get ecColorHex => getField<String>('ec_color_hex');
  set ecColorHex(String? value) => setField<String>('ec_color_hex', value);

  DateTime? get readAt => getField<DateTime>('read_at');
  set readAt(DateTime? value) => setField<DateTime>('read_at', value);

  String? get readBy => getField<String>('read_by');
  set readBy(String? value) => setField<String>('read_by', value);

  String? get lastReadHumanReadable =>
      getField<String>('last_read_human_readable');
  set lastReadHumanReadable(String? value) =>
      setField<String>('last_read_human_readable', value);

  bool? get needsAttention => getField<bool>('needs_attention');
  set needsAttention(bool? value) => setField<bool>('needs_attention', value);

  String? get readerName => getField<String>('reader_name');
  set readerName(String? value) => setField<String>('reader_name', value);
}
