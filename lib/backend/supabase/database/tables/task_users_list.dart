import '../database.dart';

class TaskUsersListTable extends SupabaseTable<TaskUsersListRow> {
  @override
  String get tableName => 'task_users_list';

  @override
  TaskUsersListRow createRow(Map<String, dynamic> data) =>
      TaskUsersListRow(data);
}

class TaskUsersListRow extends SupabaseDataRow {
  TaskUsersListRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TaskUsersListTable();

  int? get taskId => getField<int>('task_id');
  set taskId(int? value) => setField<int>('task_id', value);

  String? get profileId => getField<String>('profile_id');
  set profileId(String? value) => setField<String>('profile_id', value);

  String? get fullName => getField<String>('full_name');
  set fullName(String? value) => setField<String>('full_name', value);

  String? get roleNames => getField<String>('role_names');
  set roleNames(String? value) => setField<String>('role_names', value);

  bool? get isAssigned => getField<bool>('is_assigned');
  set isAssigned(bool? value) => setField<bool>('is_assigned', value);
}
