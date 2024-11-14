import '../database.dart';

class RolesTable extends SupabaseTable<RolesRow> {
  @override
  String get tableName => 'roles';

  @override
  RolesRow createRow(Map<String, dynamic> data) => RolesRow(data);
}

class RolesRow extends SupabaseDataRow {
  RolesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => RolesTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get roleName => getField<String>('role_name')!;
  set roleName(String value) => setField<String>('role_name', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  String? get roleType => getField<String>('role_type');
  set roleType(String? value) => setField<String>('role_type', value);

  bool? get canAssignTasks => getField<bool>('can_assign_tasks');
  set canAssignTasks(bool? value) => setField<bool>('can_assign_tasks', value);

  bool? get canModifyTasks => getField<bool>('can_modify_tasks');
  set canModifyTasks(bool? value) => setField<bool>('can_modify_tasks', value);

  bool? get canHaveTasks => getField<bool>('can_have_tasks');
  set canHaveTasks(bool? value) => setField<bool>('can_have_tasks', value);

  String? get roleCategoryId => getField<String>('role_category_id');
  set roleCategoryId(String? value) =>
      setField<String>('role_category_id', value);
}
