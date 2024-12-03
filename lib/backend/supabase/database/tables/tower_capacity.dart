import '../database.dart';

class TowerCapacityTable extends SupabaseTable<TowerCapacityRow> {
  @override
  String get tableName => 'tower_capacity';

  @override
  TowerCapacityRow createRow(Map<String, dynamic> data) =>
      TowerCapacityRow(data);
}

class TowerCapacityRow extends SupabaseDataRow {
  TowerCapacityRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TowerCapacityTable();

  int? get towerId => getField<int>('tower_id');
  set towerId(int? value) => setField<int>('tower_id', value);

  int? get totalPorts => getField<int>('total_ports');
  set totalPorts(int? value) => setField<int>('total_ports', value);

  int? get usedPorts => getField<int>('used_ports');
  set usedPorts(int? value) => setField<int>('used_ports', value);

  int? get availablePorts => getField<int>('available_ports');
  set availablePorts(int? value) => setField<int>('available_ports', value);

  String? get towerStatus => getField<String>('tower_status');
  set towerStatus(String? value) => setField<String>('tower_status', value);

  int? get plantId => getField<int>('plant_id');
  set plantId(int? value) => setField<int>('plant_id', value);

  String? get plantName => getField<String>('plant_name');
  set plantName(String? value) => setField<String>('plant_name', value);

  DateTime? get lastActionDate => getField<DateTime>('last_action_date');
  set lastActionDate(DateTime? value) =>
      setField<DateTime>('last_action_date', value);
}
