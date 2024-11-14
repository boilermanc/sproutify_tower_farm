import '../database.dart';

class TaskTypeHierarchyViewTable
    extends SupabaseTable<TaskTypeHierarchyViewRow> {
  @override
  String get tableName => 'task_type_hierarchy_view';

  @override
  TaskTypeHierarchyViewRow createRow(Map<String, dynamic> data) =>
      TaskTypeHierarchyViewRow(data);
}

class TaskTypeHierarchyViewRow extends SupabaseDataRow {
  TaskTypeHierarchyViewRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TaskTypeHierarchyViewTable();

  int? get mainCategoryId => getField<int>('main_category_id');
  set mainCategoryId(int? value) => setField<int>('main_category_id', value);

  String? get mainCategoryTitle => getField<String>('main_category_title');
  set mainCategoryTitle(String? value) =>
      setField<String>('main_category_title', value);

  String? get colorHex => getField<String>('color_hex');
  set colorHex(String? value) => setField<String>('color_hex', value);

  String? get iconName => getField<String>('icon_name');
  set iconName(String? value) => setField<String>('icon_name', value);

  int? get taskTypeId => getField<int>('task_type_id');
  set taskTypeId(int? value) => setField<int>('task_type_id', value);

  String? get taskName => getField<String>('task_name');
  set taskName(String? value) => setField<String>('task_name', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  String? get estimatedDuration => getField<String>('estimated_duration');
  set estimatedDuration(String? value) =>
      setField<String>('estimated_duration', value);

  int? get priorityLevel => getField<int>('priority_level');
  set priorityLevel(int? value) => setField<int>('priority_level', value);

  int? get categoryId => getField<int>('category_id');
  set categoryId(int? value) => setField<int>('category_id', value);

  String? get categoryName => getField<String>('category_name');
  set categoryName(String? value) => setField<String>('category_name', value);
}
