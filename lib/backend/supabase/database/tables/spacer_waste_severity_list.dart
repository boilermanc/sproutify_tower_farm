import '../database.dart';

class SpacerWasteSeverityListTable
    extends SupabaseTable<SpacerWasteSeverityListRow> {
  @override
  String get tableName => 'spacer_waste_severity_list';

  @override
  SpacerWasteSeverityListRow createRow(Map<String, dynamic> data) =>
      SpacerWasteSeverityListRow(data);
}

class SpacerWasteSeverityListRow extends SupabaseDataRow {
  SpacerWasteSeverityListRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SpacerWasteSeverityListTable();

  int? get value => getField<int>('value');
  set value(int? value) => setField<int>('value', value);

  String? get label => getField<String>('label');
  set label(String? value) => setField<String>('label', value);
}
