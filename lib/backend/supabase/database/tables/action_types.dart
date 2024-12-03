import '../database.dart';

class ActionTypesTable extends SupabaseTable<ActionTypesRow> {
  @override
  String get tableName => 'action_types';

  @override
  ActionTypesRow createRow(Map<String, dynamic> data) => ActionTypesRow(data);
}

class ActionTypesRow extends SupabaseDataRow {
  ActionTypesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ActionTypesTable();

  int get actionTypeId => getField<int>('action_type_id')!;
  set actionTypeId(int value) => setField<int>('action_type_id', value);

  String get actionName => getField<String>('action_name')!;
  set actionName(String value) => setField<String>('action_name', value);

  String? get actionColor => getField<String>('action_color');
  set actionColor(String? value) => setField<String>('action_color', value);

  bool? get showInMainActions => getField<bool>('show_in_main_actions');
  set showInMainActions(bool? value) =>
      setField<bool>('show_in_main_actions', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  String? get dashboardColor => getField<String>('dashboard_color');
  set dashboardColor(String? value) =>
      setField<String>('dashboard_color', value);

  String? get actionIcon => getField<String>('action_icon');
  set actionIcon(String? value) => setField<String>('action_icon', value);
}
