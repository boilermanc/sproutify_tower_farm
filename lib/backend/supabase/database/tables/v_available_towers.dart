import '../database.dart';

class VAvailableTowersTable extends SupabaseTable<VAvailableTowersRow> {
  @override
  String get tableName => 'v_available_towers';

  @override
  VAvailableTowersRow createRow(Map<String, dynamic> data) =>
      VAvailableTowersRow(data);
}

class VAvailableTowersRow extends SupabaseDataRow {
  VAvailableTowersRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VAvailableTowersTable();

  int? get towerId => getField<int>('tower_id');
  set towerId(int? value) => setField<int>('tower_id', value);

  int? get totalCapacity => getField<int>('total_capacity');
  set totalCapacity(int? value) => setField<int>('total_capacity', value);

  int? get actionTypeId => getField<int>('action_type_id');
  set actionTypeId(int? value) => setField<int>('action_type_id', value);

  int? get availablePorts => getField<int>('available_ports');
  set availablePorts(int? value) => setField<int>('available_ports', value);

  DateTime? get lastActionDate => getField<DateTime>('last_action_date');
  set lastActionDate(DateTime? value) =>
      setField<DateTime>('last_action_date', value);

  String? get towerStatus => getField<String>('tower_status');
  set towerStatus(String? value) => setField<String>('tower_status', value);
}
