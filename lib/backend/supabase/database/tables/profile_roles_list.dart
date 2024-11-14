import '../database.dart';

class ProfileRolesListTable extends SupabaseTable<ProfileRolesListRow> {
  @override
  String get tableName => 'profile_roles_list';

  @override
  ProfileRolesListRow createRow(Map<String, dynamic> data) =>
      ProfileRolesListRow(data);
}

class ProfileRolesListRow extends SupabaseDataRow {
  ProfileRolesListRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ProfileRolesListTable();

  String? get profileId => getField<String>('profile_id');
  set profileId(String? value) => setField<String>('profile_id', value);

  String? get roleName => getField<String>('role_name');
  set roleName(String? value) => setField<String>('role_name', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  bool? get isSelected => getField<bool>('is_selected');
  set isSelected(bool? value) => setField<bool>('is_selected', value);

  String? get roleId => getField<String>('role_id');
  set roleId(String? value) => setField<String>('role_id', value);
}
