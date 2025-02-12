import '../database.dart';

class TaskTypesTable extends SupabaseTable<TaskTypesRow> {
  @override
  String get tableName => 'task_types';

  @override
  TaskTypesRow createRow(Map<String, dynamic> data) => TaskTypesRow(data);
}

class TaskTypesRow extends SupabaseDataRow {
  TaskTypesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TaskTypesTable();

  int get taskTypeId => getField<int>('task_type_id')!;
  set taskTypeId(int value) => setField<int>('task_type_id', value);

  int? get categoryId => getField<int>('category_id');
  set categoryId(int? value) => setField<int>('category_id', value);

  String get taskName => getField<String>('task_name')!;
  set taskName(String value) => setField<String>('task_name', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  String? get estimatedDuration => getField<String>('estimated_duration');
  set estimatedDuration(String? value) =>
      setField<String>('estimated_duration', value);

  int? get priorityLevel => getField<int>('priority_level');
  set priorityLevel(int? value) => setField<int>('priority_level', value);

  bool? get requiresVerification => getField<bool>('requires_verification');
  set requiresVerification(bool? value) =>
      setField<bool>('requires_verification', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  String get scope => getField<String>('scope')!;
  set scope(String value) => setField<String>('scope', value);

  String? get towerFilter => getField<String>('tower_filter');
  set towerFilter(String? value) => setField<String>('tower_filter', value);

  String? get towerSelectionType => getField<String>('tower_selection_type');
  set towerSelectionType(String? value) =>
      setField<String>('tower_selection_type', value);
}
