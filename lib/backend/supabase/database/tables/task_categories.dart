import '../database.dart';

class TaskCategoriesTable extends SupabaseTable<TaskCategoriesRow> {
  @override
  String get tableName => 'task_categories';

  @override
  TaskCategoriesRow createRow(Map<String, dynamic> data) =>
      TaskCategoriesRow(data);
}

class TaskCategoriesRow extends SupabaseDataRow {
  TaskCategoriesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TaskCategoriesTable();

  int get categoryId => getField<int>('category_id')!;
  set categoryId(int value) => setField<int>('category_id', value);

  String get categoryName => getField<String>('category_name')!;
  set categoryName(String value) => setField<String>('category_name', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  int? get parentCategoryId => getField<int>('parent_category_id');
  set parentCategoryId(int? value) =>
      setField<int>('parent_category_id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
