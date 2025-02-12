import '../database.dart';

class TowerTaskSelectionTable extends SupabaseTable<TowerTaskSelectionRow> {
  @override
  String get tableName => 'tower_task_selection';

  @override
  TowerTaskSelectionRow createRow(Map<String, dynamic> data) =>
      TowerTaskSelectionRow(data);
}

class TowerTaskSelectionRow extends SupabaseDataRow {
  TowerTaskSelectionRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TowerTaskSelectionTable();

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);

  int? get towerId => getField<int>('tower_id');
  set towerId(int? value) => setField<int>('tower_id', value);

  String? get towerIdentifier => getField<String>('tower_identifier');
  set towerIdentifier(String? value) =>
      setField<String>('tower_identifier', value);

  int? get rowNumber => getField<int>('row_number');
  set rowNumber(int? value) => setField<int>('row_number', value);

  int? get towerNumberWithinRow => getField<int>('tower_number_within_row');
  set towerNumberWithinRow(int? value) =>
      setField<int>('tower_number_within_row', value);

  String? get availabilityStatus => getField<String>('availability_status');
  set availabilityStatus(String? value) =>
      setField<String>('availability_status', value);

  String? get statusColor => getField<String>('status_color');
  set statusColor(String? value) => setField<String>('status_color', value);

  String? get statusBackgroundColor =>
      getField<String>('status_background_color');
  set statusBackgroundColor(String? value) =>
      setField<String>('status_background_color', value);

  int? get plantId => getField<int>('plant_id');
  set plantId(int? value) => setField<int>('plant_id', value);

  String? get plantName => getField<String>('plant_name');
  set plantName(String? value) => setField<String>('plant_name', value);

  bool? get isAvailableForTask => getField<bool>('is_available_for_task');
  set isAvailableForTask(bool? value) =>
      setField<bool>('is_available_for_task', value);

  int? get taskTypeId => getField<int>('task_type_id');
  set taskTypeId(int? value) => setField<int>('task_type_id', value);

  String? get taskName => getField<String>('task_name');
  set taskName(String? value) => setField<String>('task_name', value);

  String? get towerSelectionType => getField<String>('tower_selection_type');
  set towerSelectionType(String? value) =>
      setField<String>('tower_selection_type', value);
}
