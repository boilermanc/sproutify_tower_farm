import '../database.dart';

class TaskCategoryMappingTable extends SupabaseTable<TaskCategoryMappingRow> {
  @override
  String get tableName => 'task_category_mapping';

  @override
  TaskCategoryMappingRow createRow(Map<String, dynamic> data) =>
      TaskCategoryMappingRow(data);
}

class TaskCategoryMappingRow extends SupabaseDataRow {
  TaskCategoryMappingRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TaskCategoryMappingTable();

  int get mappingId => getField<int>('mapping_id')!;
  set mappingId(int value) => setField<int>('mapping_id', value);

  int? get categoryId => getField<int>('category_id');
  set categoryId(int? value) => setField<int>('category_id', value);

  int? get mainCategoryId => getField<int>('main_category_id');
  set mainCategoryId(int? value) => setField<int>('main_category_id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
