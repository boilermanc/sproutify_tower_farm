import '../database.dart';

class VPlantingMonitoringTable extends SupabaseTable<VPlantingMonitoringRow> {
  @override
  String get tableName => 'v_planting_monitoring';

  @override
  VPlantingMonitoringRow createRow(Map<String, dynamic> data) =>
      VPlantingMonitoringRow(data);
}

class VPlantingMonitoringRow extends SupabaseDataRow {
  VPlantingMonitoringRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VPlantingMonitoringTable();

  int? get actionId => getField<int>('action_id');
  set actionId(int? value) => setField<int>('action_id', value);

  int? get towerId => getField<int>('tower_id');
  set towerId(int? value) => setField<int>('tower_id', value);

  int? get actionTypeId => getField<int>('action_type_id');
  set actionTypeId(int? value) => setField<int>('action_type_id', value);

  int? get plantId => getField<int>('plant_id');
  set plantId(int? value) => setField<int>('plant_id', value);

  int? get quantity => getField<int>('quantity');
  set quantity(int? value) => setField<int>('quantity', value);

  int? get towerContentId => getField<int>('tower_content_id');
  set towerContentId(int? value) => setField<int>('tower_content_id', value);

  String? get towerContentStatus => getField<String>('tower_content_status');
  set towerContentStatus(String? value) =>
      setField<String>('tower_content_status', value);

  int? get currentState => getField<int>('current_state');
  set currentState(int? value) => setField<int>('current_state', value);

  DateTime? get actionDate => getField<DateTime>('action_date');
  set actionDate(DateTime? value) => setField<DateTime>('action_date', value);

  DateTime? get seededDate => getField<DateTime>('seeded_date');
  set seededDate(DateTime? value) => setField<DateTime>('seeded_date', value);
}
