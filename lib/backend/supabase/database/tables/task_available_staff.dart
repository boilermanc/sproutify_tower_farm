import '../database.dart';

class TaskAvailableStaffTable extends SupabaseTable<TaskAvailableStaffRow> {
  @override
  String get tableName => 'task_available_staff';

  @override
  TaskAvailableStaffRow createRow(Map<String, dynamic> data) =>
      TaskAvailableStaffRow(data);
}

class TaskAvailableStaffRow extends SupabaseDataRow {
  TaskAvailableStaffRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TaskAvailableStaffTable();

  String? get profileId => getField<String>('profile_id');
  set profileId(String? value) => setField<String>('profile_id', value);

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);

  String? get fullName => getField<String>('full_name');
  set fullName(String? value) => setField<String>('full_name', value);

  String? get roleNames => getField<String>('role_names');
  set roleNames(String? value) => setField<String>('role_names', value);
}
