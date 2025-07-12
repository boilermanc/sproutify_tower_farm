import '../database.dart';

class TowerDisplayWithPlantsTable
    extends SupabaseTable<TowerDisplayWithPlantsRow> {
  @override
  String get tableName => 'tower_display_with_plants';

  @override
  TowerDisplayWithPlantsRow createRow(Map<String, dynamic> data) =>
      TowerDisplayWithPlantsRow(data);
}

class TowerDisplayWithPlantsRow extends SupabaseDataRow {
  TowerDisplayWithPlantsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TowerDisplayWithPlantsTable();

  int? get towerId => getField<int>('tower_id');
  set towerId(int? value) => setField<int>('tower_id', value);

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);

  int? get contentId => getField<int>('content_id');
  set contentId(int? value) => setField<int>('content_id', value);

  String? get farmName => getField<String>('farm_name');
  set farmName(String? value) => setField<String>('farm_name', value);

  String? get towerIdentifier => getField<String>('tower_identifier');
  set towerIdentifier(String? value) =>
      setField<String>('tower_identifier', value);

  String? get towerStatus => getField<String>('tower_status');
  set towerStatus(String? value) => setField<String>('tower_status', value);

  int? get individualPortsUsed => getField<int>('individual_ports_used');
  set individualPortsUsed(int? value) =>
      setField<int>('individual_ports_used', value);

  int? get totalGrowing => getField<int>('total_growing');
  set totalGrowing(int? value) => setField<int>('total_growing', value);

  int? get overallAvailablePorts => getField<int>('overall_available_ports');
  set overallAvailablePorts(int? value) =>
      setField<int>('overall_available_ports', value);

  int? get availableQuantity => getField<int>('available_quantity');
  set availableQuantity(int? value) =>
      setField<int>('available_quantity', value);

  int? get totalPorts => getField<int>('total_ports');
  set totalPorts(int? value) => setField<int>('total_ports', value);

  int? get plantId => getField<int>('plant_id');
  set plantId(int? value) => setField<int>('plant_id', value);

  String? get plantName => getField<String>('plant_name');
  set plantName(String? value) => setField<String>('plant_name', value);

  DateTime? get datePlanted => getField<DateTime>('date_planted');
  set datePlanted(DateTime? value) => setField<DateTime>('date_planted', value);

  int? get actionId => getField<int>('action_id');
  set actionId(int? value) => setField<int>('action_id', value);

  String? get statusColor => getField<String>('status_color');
  set statusColor(String? value) => setField<String>('status_color', value);

  String? get textColor => getField<String>('text_color');
  set textColor(String? value) => setField<String>('text_color', value);

  bool? get hasMaintenance => getField<bool>('has_maintenance');
  set hasMaintenance(bool? value) => setField<bool>('has_maintenance', value);

  int? get maintenanceCount => getField<int>('maintenance_count');
  set maintenanceCount(int? value) => setField<int>('maintenance_count', value);

  List<String> get maintenanceTasks =>
      getListField<String>('maintenance_tasks');
  set maintenanceTasks(List<String>? value) =>
      setListField<String>('maintenance_tasks', value);

  List<int> get maintenanceTaskIds => getListField<int>('maintenance_task_ids');
  set maintenanceTaskIds(List<int>? value) =>
      setListField<int>('maintenance_task_ids', value);

  List<int> get maintenanceTaskTypeIds =>
      getListField<int>('maintenance_task_type_ids');
  set maintenanceTaskTypeIds(List<int>? value) =>
      setListField<int>('maintenance_task_type_ids', value);

  DateTime? get nextMaintenanceDue =>
      getField<DateTime>('next_maintenance_due');
  set nextMaintenanceDue(DateTime? value) =>
      setField<DateTime>('next_maintenance_due', value);
}
