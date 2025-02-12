import '../database.dart';

class PlantWasteReasonsListTable
    extends SupabaseTable<PlantWasteReasonsListRow> {
  @override
  String get tableName => 'plant_waste_reasons_list';

  @override
  PlantWasteReasonsListRow createRow(Map<String, dynamic> data) =>
      PlantWasteReasonsListRow(data);
}

class PlantWasteReasonsListRow extends SupabaseDataRow {
  PlantWasteReasonsListRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PlantWasteReasonsListTable();

  int? get value => getField<int>('value');
  set value(int? value) => setField<int>('value', value);

  String? get label => getField<String>('label');
  set label(String? value) => setField<String>('label', value);

  String? get groupName => getField<String>('group_name');
  set groupName(String? value) => setField<String>('group_name', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  bool? get requiresPhoto => getField<bool>('requires_photo');
  set requiresPhoto(bool? value) => setField<bool>('requires_photo', value);

  bool? get requiresNotes => getField<bool>('requires_notes');
  set requiresNotes(bool? value) => setField<bool>('requires_notes', value);

  int? get groupSortOrder => getField<int>('group_sort_order');
  set groupSortOrder(int? value) => setField<int>('group_sort_order', value);

  int? get optionSortOrder => getField<int>('option_sort_order');
  set optionSortOrder(int? value) => setField<int>('option_sort_order', value);
}
