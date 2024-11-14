import '../database.dart';

class TowersAvailableTable extends SupabaseTable<TowersAvailableRow> {
  @override
  String get tableName => 'towers_available';

  @override
  TowersAvailableRow createRow(Map<String, dynamic> data) =>
      TowersAvailableRow(data);
}

class TowersAvailableRow extends SupabaseDataRow {
  TowersAvailableRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TowersAvailableTable();

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

  int? get numPorts => getField<int>('num_ports');
  set numPorts(int? value) => setField<int>('num_ports', value);

  int? get portsInUse => getField<int>('ports_in_use');
  set portsInUse(int? value) => setField<int>('ports_in_use', value);

  int? get portsAvailable => getField<int>('ports_available');
  set portsAvailable(int? value) => setField<int>('ports_available', value);
}
