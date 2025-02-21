import '../database.dart';

class TowerDisplayWithPlantsNewTable
    extends SupabaseTable<TowerDisplayWithPlantsNewRow> {
  @override
  String get tableName => 'tower_display_with_plants_new';

  @override
  TowerDisplayWithPlantsNewRow createRow(Map<String, dynamic> data) =>
      TowerDisplayWithPlantsNewRow(data);
}

class TowerDisplayWithPlantsNewRow extends SupabaseDataRow {
  TowerDisplayWithPlantsNewRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TowerDisplayWithPlantsNewTable();

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

  String? get notes => getField<String>('notes');
  set notes(String? value) => setField<String>('notes', value);

  int? get actionId => getField<int>('action_id');
  set actionId(int? value) => setField<int>('action_id', value);

  String? get statusColor => getField<String>('status_color');
  set statusColor(String? value) => setField<String>('status_color', value);

  String? get textColor => getField<String>('text_color');
  set textColor(String? value) => setField<String>('text_color', value);
}
