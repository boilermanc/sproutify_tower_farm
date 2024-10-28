import '../database.dart';

class PotableWaterPoliciesTable extends SupabaseTable<PotableWaterPoliciesRow> {
  @override
  String get tableName => 'potable_water_policies';

  @override
  PotableWaterPoliciesRow createRow(Map<String, dynamic> data) =>
      PotableWaterPoliciesRow(data);
}

class PotableWaterPoliciesRow extends SupabaseDataRow {
  PotableWaterPoliciesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PotableWaterPoliciesTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);

  String get policyDescription => getField<String>('policy_description')!;
  set policyDescription(String value) =>
      setField<String>('policy_description', value);

  String get waterSource => getField<String>('water_source')!;
  set waterSource(String value) => setField<String>('water_source', value);

  bool? get cityWaterTestChecked => getField<bool>('city_water_test_checked');
  set cityWaterTestChecked(bool? value) =>
      setField<bool>('city_water_test_checked', value);

  String? get cityWaterReportUrl => getField<String>('city_water_report_url');
  set cityWaterReportUrl(String? value) =>
      setField<String>('city_water_report_url', value);

  bool? get wellWaterTested => getField<bool>('well_water_tested');
  set wellWaterTested(bool? value) =>
      setField<bool>('well_water_tested', value);

  DateTime? get wellWaterTestDate => getField<DateTime>('well_water_test_date');
  set wellWaterTestDate(DateTime? value) =>
      setField<DateTime>('well_water_test_date', value);

  dynamic? get wellWaterTestResults =>
      getField<dynamic>('well_water_test_results');
  set wellWaterTestResults(dynamic? value) =>
      setField<dynamic>('well_water_test_results', value);

  DateTime? get nextTestDueDate => getField<DateTime>('next_test_due_date');
  set nextTestDueDate(DateTime? value) =>
      setField<DateTime>('next_test_due_date', value);

  bool? get emergencyWaterAvailable =>
      getField<bool>('emergency_water_available');
  set emergencyWaterAvailable(bool? value) =>
      setField<bool>('emergency_water_available', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);
}
