import '../database.dart';

class MonitoringTowerDashboardEnhancedWithValuesTable
    extends SupabaseTable<MonitoringTowerDashboardEnhancedWithValuesRow> {
  @override
  String get tableName => 'monitoring_tower_dashboard_enhanced_with_values';

  @override
  MonitoringTowerDashboardEnhancedWithValuesRow createRow(
          Map<String, dynamic> data) =>
      MonitoringTowerDashboardEnhancedWithValuesRow(data);
}

class MonitoringTowerDashboardEnhancedWithValuesRow extends SupabaseDataRow {
  MonitoringTowerDashboardEnhancedWithValuesRow(Map<String, dynamic> data)
      : super(data);

  @override
  SupabaseTable get table => MonitoringTowerDashboardEnhancedWithValuesTable();

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

  double? get phValue => getField<double>('ph_value');
  set phValue(double? value) => setField<double>('ph_value', value);

  double? get ecValue => getField<double>('ec_value');
  set ecValue(double? value) => setField<double>('ec_value', value);

  String? get phColor => getField<String>('ph_color');
  set phColor(String? value) => setField<String>('ph_color', value);

  String? get phColorHex => getField<String>('ph_color_hex');
  set phColorHex(String? value) => setField<String>('ph_color_hex', value);

  String? get ecStatus => getField<String>('ec_status');
  set ecStatus(String? value) => setField<String>('ec_status', value);

  String? get ecRange => getField<String>('ec_range');
  set ecRange(String? value) => setField<String>('ec_range', value);

  String? get ecColorHex => getField<String>('ec_color_hex');
  set ecColorHex(String? value) => setField<String>('ec_color_hex', value);

  double? get phMinValue => getField<double>('ph_min_value');
  set phMinValue(double? value) => setField<double>('ph_min_value', value);

  double? get phMaxValue => getField<double>('ph_max_value');
  set phMaxValue(double? value) => setField<double>('ph_max_value', value);

  String? get phDescription => getField<String>('ph_description');
  set phDescription(String? value) => setField<String>('ph_description', value);

  String? get phRange => getField<String>('ph_range');
  set phRange(String? value) => setField<String>('ph_range', value);

  double? get ecMinValue => getField<double>('ec_min_value');
  set ecMinValue(double? value) => setField<double>('ec_min_value', value);

  double? get ecMaxValue => getField<double>('ec_max_value');
  set ecMaxValue(double? value) => setField<double>('ec_max_value', value);

  String? get ecDescription => getField<String>('ec_description');
  set ecDescription(String? value) => setField<String>('ec_description', value);

  String? get ecSuitableFor => getField<String>('ec_suitable_for');
  set ecSuitableFor(String? value) =>
      setField<String>('ec_suitable_for', value);

  DateTime? get readAt => getField<DateTime>('read_at');
  set readAt(DateTime? value) => setField<DateTime>('read_at', value);

  String? get readBy => getField<String>('read_by');
  set readBy(String? value) => setField<String>('read_by', value);

  String? get lastReadHumanReadable =>
      getField<String>('last_read_human_readable');
  set lastReadHumanReadable(String? value) =>
      setField<String>('last_read_human_readable', value);

  DateTime? get adjustedCurrentTime =>
      getField<DateTime>('adjusted_current_time');
  set adjustedCurrentTime(DateTime? value) =>
      setField<DateTime>('adjusted_current_time', value);

  DateTime? get databaseCurrentTime =>
      getField<DateTime>('database_current_time');
  set databaseCurrentTime(DateTime? value) =>
      setField<DateTime>('database_current_time', value);

  bool? get needsAttention => getField<bool>('needs_attention');
  set needsAttention(bool? value) => setField<bool>('needs_attention', value);

  String? get issues => getField<String>('issues');
  set issues(String? value) => setField<String>('issues', value);

  String? get issueType => getField<String>('issue_type');
  set issueType(String? value) => setField<String>('issue_type', value);

  String? get issueColorHex => getField<String>('issue_color_hex');
  set issueColorHex(String? value) =>
      setField<String>('issue_color_hex', value);

  String? get readerName => getField<String>('reader_name');
  set readerName(String? value) => setField<String>('reader_name', value);
}
