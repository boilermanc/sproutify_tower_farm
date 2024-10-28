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
}
