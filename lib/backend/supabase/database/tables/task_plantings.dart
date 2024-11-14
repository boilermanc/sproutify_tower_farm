import '../database.dart';

class TaskPlantingsTable extends SupabaseTable<TaskPlantingsRow> {
  @override
  String get tableName => 'task_plantings';

  @override
  TaskPlantingsRow createRow(Map<String, dynamic> data) =>
      TaskPlantingsRow(data);
}

class TaskPlantingsRow extends SupabaseDataRow {
  TaskPlantingsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TaskPlantingsTable();

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);

  int? get taskId => getField<int>('task_id');
  set taskId(int? value) => setField<int>('task_id', value);

  int? get towerId => getField<int>('tower_id');
  set towerId(int? value) => setField<int>('tower_id', value);

  String? get towerIdentifier => getField<String>('tower_identifier');
  set towerIdentifier(String? value) =>
      setField<String>('tower_identifier', value);

  DateTime? get dueDate => getField<DateTime>('due_date');
  set dueDate(DateTime? value) => setField<DateTime>('due_date', value);

  String? get taskStatus => getField<String>('task_status');
  set taskStatus(String? value) => setField<String>('task_status', value);

  int? get plantId => getField<int>('plant_id');
  set plantId(int? value) => setField<int>('plant_id', value);

  String? get plantName => getField<String>('plant_name');
  set plantName(String? value) => setField<String>('plant_name', value);

  int? get requestedQuantity => getField<int>('requested_quantity');
  set requestedQuantity(int? value) =>
      setField<int>('requested_quantity', value);

  int? get availableSpacers => getField<int>('available_spacers');
  set availableSpacers(int? value) => setField<int>('available_spacers', value);

  String? get plantingStatus => getField<String>('planting_status');
  set plantingStatus(String? value) =>
      setField<String>('planting_status', value);

  String? get statusColor => getField<String>('status_color');
  set statusColor(String? value) => setField<String>('status_color', value);

  String? get statusBackgroundColor =>
      getField<String>('status_background_color');
  set statusBackgroundColor(String? value) =>
      setField<String>('status_background_color', value);
}
