import '../database.dart';

class MainActionTypesTable extends SupabaseTable<MainActionTypesRow> {
  @override
  String get tableName => 'main_action_types';

  @override
  MainActionTypesRow createRow(Map<String, dynamic> data) =>
      MainActionTypesRow(data);
}

class MainActionTypesRow extends SupabaseDataRow {
  MainActionTypesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => MainActionTypesTable();

  int? get actionTypeId => getField<int>('action_type_id');
  set actionTypeId(int? value) => setField<int>('action_type_id', value);

  String? get actionName => getField<String>('action_name');
  set actionName(String? value) => setField<String>('action_name', value);

  String? get actionColor => getField<String>('action_color');
  set actionColor(String? value) => setField<String>('action_color', value);
}
