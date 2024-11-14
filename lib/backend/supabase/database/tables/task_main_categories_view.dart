import '../database.dart';

class TaskMainCategoriesViewTable
    extends SupabaseTable<TaskMainCategoriesViewRow> {
  @override
  String get tableName => 'task_main_categories_view';

  @override
  TaskMainCategoriesViewRow createRow(Map<String, dynamic> data) =>
      TaskMainCategoriesViewRow(data);
}

class TaskMainCategoriesViewRow extends SupabaseDataRow {
  TaskMainCategoriesViewRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TaskMainCategoriesViewTable();

  int? get mainCategoryId => getField<int>('main_category_id');
  set mainCategoryId(int? value) => setField<int>('main_category_id', value);

  String? get categoryTitle => getField<String>('category_title');
  set categoryTitle(String? value) => setField<String>('category_title', value);

  String? get categoryDescription => getField<String>('category_description');
  set categoryDescription(String? value) =>
      setField<String>('category_description', value);

  String? get colorHex => getField<String>('color_hex');
  set colorHex(String? value) => setField<String>('color_hex', value);

  String? get iconName => getField<String>('icon_name');
  set iconName(String? value) => setField<String>('icon_name', value);
}
