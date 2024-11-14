import '../database.dart';

class FarmRolesTable extends SupabaseTable<FarmRolesRow> {
  @override
  String get tableName => 'farm_roles';

  @override
  FarmRolesRow createRow(Map<String, dynamic> data) => FarmRolesRow(data);
}

class FarmRolesRow extends SupabaseDataRow {
  FarmRolesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => FarmRolesTable();

  int get farmRoleId => getField<int>('farm_role_id')!;
  set farmRoleId(int value) => setField<int>('farm_role_id', value);

  String get farmId => getField<String>('farm_id')!;
  set farmId(String value) => setField<String>('farm_id', value);

  String get roleId => getField<String>('role_id')!;
  set roleId(String value) => setField<String>('role_id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
