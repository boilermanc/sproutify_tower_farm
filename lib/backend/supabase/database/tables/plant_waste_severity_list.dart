import '../database.dart';

class PlantWasteSeverityListTable
    extends SupabaseTable<PlantWasteSeverityListRow> {
  @override
  String get tableName => 'plant_waste_severity_list';

  @override
  PlantWasteSeverityListRow createRow(Map<String, dynamic> data) =>
      PlantWasteSeverityListRow(data);
}

class PlantWasteSeverityListRow extends SupabaseDataRow {
  PlantWasteSeverityListRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PlantWasteSeverityListTable();

  int? get value => getField<int>('value');
  set value(int? value) => setField<int>('value', value);

  String? get label => getField<String>('label');
  set label(String? value) => setField<String>('label', value);
}
