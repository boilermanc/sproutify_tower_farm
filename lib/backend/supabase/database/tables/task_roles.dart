import '../database.dart';

class TaskRolesTable extends SupabaseTable<TaskRolesRow> {
  @override
  String get tableName => 'task_roles';

  @override
  TaskRolesRow createRow(Map<String, dynamic> data) => TaskRolesRow(data);
}

class TaskRolesRow extends SupabaseDataRow {
  TaskRolesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TaskRolesTable();

  int get taskId => getField<int>('task_id')!;
  set taskId(int value) => setField<int>('task_id', value);

  String get roleId => getField<String>('role_id')!;
  set roleId(String value) => setField<String>('role_id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);
}
