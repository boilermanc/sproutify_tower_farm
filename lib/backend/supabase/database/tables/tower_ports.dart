import '../database.dart';

class TowerPortsTable extends SupabaseTable<TowerPortsRow> {
  @override
  String get tableName => 'tower_ports';

  @override
  TowerPortsRow createRow(Map<String, dynamic> data) => TowerPortsRow(data);
}

class TowerPortsRow extends SupabaseDataRow {
  TowerPortsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TowerPortsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get numPorts => getField<int>('num_ports');
  set numPorts(int? value) => setField<int>('num_ports', value);
}
