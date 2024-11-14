import '../database.dart';

class TaskMainCategoryTasksFlatViewTable
    extends SupabaseTable<TaskMainCategoryTasksFlatViewRow> {
  @override
  String get tableName => 'task_main_category_tasks_flat_view';

  @override
  TaskMainCategoryTasksFlatViewRow createRow(Map<String, dynamic> data) =>
      TaskMainCategoryTasksFlatViewRow(data);
}

class TaskMainCategoryTasksFlatViewRow extends SupabaseDataRow {
  TaskMainCategoryTasksFlatViewRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TaskMainCategoryTasksFlatViewTable();

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

  String? get tasksSummary => getField<String>('tasks_summary');
  set tasksSummary(String? value) => setField<String>('tasks_summary', value);
}
