import '../database.dart';

class TowerAvailablePortsTable extends SupabaseTable<TowerAvailablePortsRow> {
  @override
  String get tableName => 'tower_available_ports';

  @override
  TowerAvailablePortsRow createRow(Map<String, dynamic> data) =>
      TowerAvailablePortsRow(data);
}

class TowerAvailablePortsRow extends SupabaseDataRow {
  TowerAvailablePortsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TowerAvailablePortsTable();

  int? get towerId => getField<int>('tower_id');
  set towerId(int? value) => setField<int>('tower_id', value);

  int? get totalPorts => getField<int>('total_ports');
  set totalPorts(int? value) => setField<int>('total_ports', value);

  int? get usedPorts => getField<int>('used_ports');
  set usedPorts(int? value) => setField<int>('used_ports', value);

  int? get plantedPorts => getField<int>('planted_ports');
  set plantedPorts(int? value) => setField<int>('planted_ports', value);

  int? get availablePorts => getField<int>('available_ports');
  set availablePorts(int? value) => setField<int>('available_ports', value);
}
