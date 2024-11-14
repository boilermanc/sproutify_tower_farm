import '../database.dart';

class TaskStatusConfigTable extends SupabaseTable<TaskStatusConfigRow> {
  @override
  String get tableName => 'task_status_config';

  @override
  TaskStatusConfigRow createRow(Map<String, dynamic> data) =>
      TaskStatusConfigRow(data);
}

class TaskStatusConfigRow extends SupabaseDataRow {
  TaskStatusConfigRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TaskStatusConfigTable();

  String get statusCode => getField<String>('status_code')!;
  set statusCode(String value) => setField<String>('status_code', value);

  String get displayName => getField<String>('display_name')!;
  set displayName(String value) => setField<String>('display_name', value);

  String get colorCode => getField<String>('color_code')!;
  set colorCode(String value) => setField<String>('color_code', value);

  String get bgColorCode => getField<String>('bg_color_code')!;
  set bgColorCode(String value) => setField<String>('bg_color_code', value);

  String? get iconName => getField<String>('icon_name');
  set iconName(String? value) => setField<String>('icon_name', value);

  int? get sortOrder => getField<int>('sort_order');
  set sortOrder(int? value) => setField<int>('sort_order', value);

  bool? get isActive => getField<bool>('is_active');
  set isActive(bool? value) => setField<bool>('is_active', value);
}
