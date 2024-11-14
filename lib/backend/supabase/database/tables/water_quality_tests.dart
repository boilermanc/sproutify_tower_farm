import '../database.dart';

class WaterQualityTestsTable extends SupabaseTable<WaterQualityTestsRow> {
  @override
  String get tableName => 'water_quality_tests';

  @override
  WaterQualityTestsRow createRow(Map<String, dynamic> data) =>
      WaterQualityTestsRow(data);
}

class WaterQualityTestsRow extends SupabaseDataRow {
  WaterQualityTestsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => WaterQualityTestsTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get farmId => getField<String>('farm_id')!;
  set farmId(String value) => setField<String>('farm_id', value);

  DateTime get testDate => getField<DateTime>('test_date')!;
  set testDate(DateTime value) => setField<DateTime>('test_date', value);

  String get waterSource => getField<String>('water_source')!;
  set waterSource(String value) => setField<String>('water_source', value);

  String get testTypeId => getField<String>('test_type_id')!;
  set testTypeId(String value) => setField<String>('test_type_id', value);

  double get testResult => getField<double>('test_result')!;
  set testResult(double value) => setField<double>('test_result', value);

  String get testUnitId => getField<String>('test_unit_id')!;
  set testUnitId(String value) => setField<String>('test_unit_id', value);

  String get testStandardId => getField<String>('test_standard_id')!;
  set testStandardId(String value) =>
      setField<String>('test_standard_id', value);

  String get complianceStatusId => getField<String>('compliance_status_id')!;
  set complianceStatusId(String value) =>
      setField<String>('compliance_status_id', value);

  String? get correctiveAction => getField<String>('corrective_action');
  set correctiveAction(String? value) =>
      setField<String>('corrective_action', value);

  String? get vendorId => getField<String>('vendor_id');
  set vendorId(String? value) => setField<String>('vendor_id', value);

  String get userId => getField<String>('user_id')!;
  set userId(String value) => setField<String>('user_id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  String? get reportUrl => getField<String>('report_url');
  set reportUrl(String? value) => setField<String>('report_url', value);

  DateTime? get nextTestDueDate => getField<DateTime>('next_test_due_date');
  set nextTestDueDate(DateTime? value) =>
      setField<DateTime>('next_test_due_date', value);
}
