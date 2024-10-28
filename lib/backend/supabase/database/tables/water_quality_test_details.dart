import '../database.dart';

class WaterQualityTestDetailsTable
    extends SupabaseTable<WaterQualityTestDetailsRow> {
  @override
  String get tableName => 'water_quality_test_details';

  @override
  WaterQualityTestDetailsRow createRow(Map<String, dynamic> data) =>
      WaterQualityTestDetailsRow(data);
}

class WaterQualityTestDetailsRow extends SupabaseDataRow {
  WaterQualityTestDetailsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => WaterQualityTestDetailsTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);

  DateTime? get testDate => getField<DateTime>('test_date');
  set testDate(DateTime? value) => setField<DateTime>('test_date', value);

  String? get waterSource => getField<String>('water_source');
  set waterSource(String? value) => setField<String>('water_source', value);

  String? get testType => getField<String>('test_type');
  set testType(String? value) => setField<String>('test_type', value);

  double? get testResult => getField<double>('test_result');
  set testResult(double? value) => setField<double>('test_result', value);

  String? get testUnit => getField<String>('test_unit');
  set testUnit(String? value) => setField<String>('test_unit', value);

  String? get testStandard => getField<String>('test_standard');
  set testStandard(String? value) => setField<String>('test_standard', value);

  String? get complianceStatus => getField<String>('compliance_status');
  set complianceStatus(String? value) =>
      setField<String>('compliance_status', value);

  String? get complianceColor => getField<String>('compliance_color');
  set complianceColor(String? value) =>
      setField<String>('compliance_color', value);

  String? get vendor => getField<String>('vendor');
  set vendor(String? value) => setField<String>('vendor', value);

  String? get testedBy => getField<String>('tested_by');
  set testedBy(String? value) => setField<String>('tested_by', value);

  String? get reportUrl => getField<String>('report_url');
  set reportUrl(String? value) => setField<String>('report_url', value);
}
