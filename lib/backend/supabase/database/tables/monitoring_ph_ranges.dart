import '../database.dart';

class MonitoringPhRangesTable extends SupabaseTable<MonitoringPhRangesRow> {
  @override
  String get tableName => 'monitoring_ph_ranges';

  @override
  MonitoringPhRangesRow createRow(Map<String, dynamic> data) =>
      MonitoringPhRangesRow(data);
}

class MonitoringPhRangesRow extends SupabaseDataRow {
  MonitoringPhRangesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => MonitoringPhRangesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get color => getField<String>('color')!;
  set color(String value) => setField<String>('color', value);

  double get minValue => getField<double>('min_value')!;
  set minValue(double value) => setField<double>('min_value', value);

  double get maxValue => getField<double>('max_value')!;
  set maxValue(double value) => setField<double>('max_value', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
