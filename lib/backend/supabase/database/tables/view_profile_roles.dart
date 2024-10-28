import '../database.dart';

class ViewProfileRolesTable extends SupabaseTable<ViewProfileRolesRow> {
  @override
  String get tableName => 'view_profile_roles';

  @override
  ViewProfileRolesRow createRow(Map<String, dynamic> data) =>
      ViewProfileRolesRow(data);
}

class ViewProfileRolesRow extends SupabaseDataRow {
  ViewProfileRolesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ViewProfileRolesTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get firstName => getField<String>('first_name');
  set firstName(String? value) => setField<String>('first_name', value);

  String? get lastName => getField<String>('last_name');
  set lastName(String? value) => setField<String>('last_name', value);

  String? get phoneNumber => getField<String>('phone_number');
  set phoneNumber(String? value) => setField<String>('phone_number', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);

  List<String> get roles => getListField<String>('roles');
  set roles(List<String>? value) => setListField<String>('roles', value);
}
