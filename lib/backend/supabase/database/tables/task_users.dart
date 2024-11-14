import '../database.dart';

class TaskUsersTable extends SupabaseTable<TaskUsersRow> {
  @override
  String get tableName => 'task_users';

  @override
  TaskUsersRow createRow(Map<String, dynamic> data) => TaskUsersRow(data);
}

class TaskUsersRow extends SupabaseDataRow {
  TaskUsersRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TaskUsersTable();

  int get taskId => getField<int>('task_id')!;
  set taskId(int value) => setField<int>('task_id', value);

  String get userId => getField<String>('user_id')!;
  set userId(String value) => setField<String>('user_id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);
}
