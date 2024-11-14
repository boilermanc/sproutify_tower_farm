import '../database.dart';

class TaskMainCategoriesTable extends SupabaseTable<TaskMainCategoriesRow> {
  @override
  String get tableName => 'task_main_categories';

  @override
  TaskMainCategoriesRow createRow(Map<String, dynamic> data) =>
      TaskMainCategoriesRow(data);
}

class TaskMainCategoriesRow extends SupabaseDataRow {
  TaskMainCategoriesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TaskMainCategoriesTable();

  int get mainCategoryId => getField<int>('main_category_id')!;
  set mainCategoryId(int value) => setField<int>('main_category_id', value);

  String get title => getField<String>('title')!;
  set title(String value) => setField<String>('title', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  String get colorHex => getField<String>('color_hex')!;
  set colorHex(String value) => setField<String>('color_hex', value);

  String get iconName => getField<String>('icon_name')!;
  set iconName(String value) => setField<String>('icon_name', value);

  bool? get isActive => getField<bool>('is_active');
  set isActive(bool? value) => setField<bool>('is_active', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);
}
