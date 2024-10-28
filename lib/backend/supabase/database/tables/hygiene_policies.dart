import '../database.dart';

class HygienePoliciesTable extends SupabaseTable<HygienePoliciesRow> {
  @override
  String get tableName => 'hygiene_policies';

  @override
  HygienePoliciesRow createRow(Map<String, dynamic> data) =>
      HygienePoliciesRow(data);
}

class HygienePoliciesRow extends SupabaseDataRow {
  HygienePoliciesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => HygienePoliciesTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);

  String get policyDescription => getField<String>('policy_description')!;
  set policyDescription(String value) =>
      setField<String>('policy_description', value);

  bool? get loginRequired => getField<bool>('login_required');
  set loginRequired(bool? value) => setField<bool>('login_required', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);
}
