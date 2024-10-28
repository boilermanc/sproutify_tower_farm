import '../database.dart';

class ComplianceStatusesTable extends SupabaseTable<ComplianceStatusesRow> {
  @override
  String get tableName => 'compliance_statuses';

  @override
  ComplianceStatusesRow createRow(Map<String, dynamic> data) =>
      ComplianceStatusesRow(data);
}

class ComplianceStatusesRow extends SupabaseDataRow {
  ComplianceStatusesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ComplianceStatusesTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  String? get complianceColor => getField<String>('compliance_color');
  set complianceColor(String? value) =>
      setField<String>('compliance_color', value);
}
