import '../database.dart';

class TaskRolesListTable extends SupabaseTable<TaskRolesListRow> {
  @override
  String get tableName => 'task_roles_list';

  @override
  TaskRolesListRow createRow(Map<String, dynamic> data) =>
      TaskRolesListRow(data);
}

class TaskRolesListRow extends SupabaseDataRow {
  TaskRolesListRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TaskRolesListTable();

  int? get taskId => getField<int>('task_id');
  set taskId(int? value) => setField<int>('task_id', value);

  String? get roleName => getField<String>('role_name');
  set roleName(String? value) => setField<String>('role_name', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  bool? get isSelected => getField<bool>('is_selected');
  set isSelected(bool? value) => setField<bool>('is_selected', value);

  String? get roleId => getField<String>('role_id');
  set roleId(String? value) => setField<String>('role_id', value);
}
