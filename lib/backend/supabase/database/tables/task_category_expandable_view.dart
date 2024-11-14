import '../database.dart';

class TaskCategoryExpandableViewTable
    extends SupabaseTable<TaskCategoryExpandableViewRow> {
  @override
  String get tableName => 'task_category_expandable_view';

  @override
  TaskCategoryExpandableViewRow createRow(Map<String, dynamic> data) =>
      TaskCategoryExpandableViewRow(data);
}

class TaskCategoryExpandableViewRow extends SupabaseDataRow {
  TaskCategoryExpandableViewRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TaskCategoryExpandableViewTable();

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

  int? get taskTypeId => getField<int>('task_type_id');
  set taskTypeId(int? value) => setField<int>('task_type_id', value);

  String? get taskName => getField<String>('task_name');
  set taskName(String? value) => setField<String>('task_name', value);

  String? get taskDescription => getField<String>('task_description');
  set taskDescription(String? value) =>
      setField<String>('task_description', value);

  double? get durationMinutes => getField<double>('duration_minutes');
  set durationMinutes(double? value) =>
      setField<double>('duration_minutes', value);

  bool? get requiresVerification => getField<bool>('requires_verification');
  set requiresVerification(bool? value) =>
      setField<bool>('requires_verification', value);

  int? get priorityLevel => getField<int>('priority_level');
  set priorityLevel(int? value) => setField<int>('priority_level', value);
}
