import '../database.dart';

class IracMethodsWithModesTable extends SupabaseTable<IracMethodsWithModesRow> {
  @override
  String get tableName => 'irac_methods_with_modes';

  @override
  IracMethodsWithModesRow createRow(Map<String, dynamic> data) =>
      IracMethodsWithModesRow(data);
}

class IracMethodsWithModesRow extends SupabaseDataRow {
  IracMethodsWithModesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => IracMethodsWithModesTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  bool? get hasVideo => getField<bool>('has_video');
  set hasVideo(bool? value) => setField<bool>('has_video', value);

  String? get species => getField<String>('species');
  set species(String? value) => setField<String>('species', value);

  String? get stage => getField<String>('stage');
  set stage(String? value) => setField<String>('stage', value);

  String? get methodology => getField<String>('methodology');
  set methodology(String? value) => setField<String>('methodology', value);

  List<String> get modesOfAction => getListField<String>('modes_of_action');
  set modesOfAction(List<String>? value) =>
      setListField<String>('modes_of_action', value);
}
