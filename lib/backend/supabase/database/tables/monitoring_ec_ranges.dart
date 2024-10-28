import '../database.dart';

class MonitoringEcRangesTable extends SupabaseTable<MonitoringEcRangesRow> {
  @override
  String get tableName => 'monitoring_ec_ranges';

  @override
  MonitoringEcRangesRow createRow(Map<String, dynamic> data) =>
      MonitoringEcRangesRow(data);
}

class MonitoringEcRangesRow extends SupabaseDataRow {
  MonitoringEcRangesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => MonitoringEcRangesTable();

  String get farmId => getField<String>('farm_id')!;
  set farmId(String value) => setField<String>('farm_id', value);

  String get ecStatus => getField<String>('ec_status')!;
  set ecStatus(String value) => setField<String>('ec_status', value);

  double get minValue => getField<double>('min_value')!;
  set minValue(double value) => setField<double>('min_value', value);

  double get maxValue => getField<double>('max_value')!;
  set maxValue(double value) => setField<double>('max_value', value);

  String get color => getField<String>('color')!;
  set color(String value) => setField<String>('color', value);

  String? get colorHex => getField<String>('color_hex');
  set colorHex(String? value) => setField<String>('color_hex', value);
}
