import '../database.dart';

class WaterQualityLogsTable extends SupabaseTable<WaterQualityLogsRow> {
  @override
  String get tableName => 'water_quality_logs';

  @override
  WaterQualityLogsRow createRow(Map<String, dynamic> data) =>
      WaterQualityLogsRow(data);
}

class WaterQualityLogsRow extends SupabaseDataRow {
  WaterQualityLogsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => WaterQualityLogsTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);

  DateTime get testDate => getField<DateTime>('test_date')!;
  set testDate(DateTime value) => setField<DateTime>('test_date', value);

  String get waterSource => getField<String>('water_source')!;
  set waterSource(String value) => setField<String>('water_source', value);

  dynamic get testResults => getField<dynamic>('test_results')!;
  set testResults(dynamic value) => setField<dynamic>('test_results', value);

  String? get notes => getField<String>('notes');
  set notes(String? value) => setField<String>('notes', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);
}
