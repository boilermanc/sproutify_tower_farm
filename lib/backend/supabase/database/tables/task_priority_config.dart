import '../database.dart';

class TaskPriorityConfigTable extends SupabaseTable<TaskPriorityConfigRow> {
  @override
  String get tableName => 'task_priority_config';

  @override
  TaskPriorityConfigRow createRow(Map<String, dynamic> data) =>
      TaskPriorityConfigRow(data);
}

class TaskPriorityConfigRow extends SupabaseDataRow {
  TaskPriorityConfigRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TaskPriorityConfigTable();

  int get priorityLevel => getField<int>('priority_level')!;
  set priorityLevel(int value) => setField<int>('priority_level', value);

  String get displayName => getField<String>('display_name')!;
  set displayName(String value) => setField<String>('display_name', value);

  String get colorCode => getField<String>('color_code')!;
  set colorCode(String value) => setField<String>('color_code', value);

  String? get iconName => getField<String>('icon_name');
  set iconName(String? value) => setField<String>('icon_name', value);

  int? get sortOrder => getField<int>('sort_order');
  set sortOrder(int? value) => setField<int>('sort_order', value);
}
