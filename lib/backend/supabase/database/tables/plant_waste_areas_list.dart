import '../database.dart';

class PlantWasteAreasListTable extends SupabaseTable<PlantWasteAreasListRow> {
  @override
  String get tableName => 'plant_waste_areas_list';

  @override
  PlantWasteAreasListRow createRow(Map<String, dynamic> data) =>
      PlantWasteAreasListRow(data);
}

class PlantWasteAreasListRow extends SupabaseDataRow {
  PlantWasteAreasListRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PlantWasteAreasListTable();

  String? get value => getField<String>('value');
  set value(String? value) => setField<String>('value', value);

  String? get label => getField<String>('label');
  set label(String? value) => setField<String>('label', value);
}
