import '../database.dart';

class ProfileRolesTable extends SupabaseTable<ProfileRolesRow> {
  @override
  String get tableName => 'profile_roles';

  @override
  ProfileRolesRow createRow(Map<String, dynamic> data) => ProfileRolesRow(data);
}

class ProfileRolesRow extends SupabaseDataRow {
  ProfileRolesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ProfileRolesTable();

  String get profileId => getField<String>('profile_id')!;
  set profileId(String value) => setField<String>('profile_id', value);

  String get roleId => getField<String>('role_id')!;
  set roleId(String value) => setField<String>('role_id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);
}
