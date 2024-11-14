import '../database.dart';

class TowersStatusTable extends SupabaseTable<TowersStatusRow> {
  @override
  String get tableName => 'towers_status';

  @override
  TowersStatusRow createRow(Map<String, dynamic> data) => TowersStatusRow(data);
}

class TowersStatusRow extends SupabaseDataRow {
  TowersStatusRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TowersStatusTable();

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

  DateTime? get seededDate => getField<DateTime>('seeded_date');
  set seededDate(DateTime? value) => setField<DateTime>('seeded_date', value);

  int? get totalQuantity => getField<int>('total_quantity');
  set totalQuantity(int? value) => setField<int>('total_quantity', value);

  int? get availableQuantity => getField<int>('available_quantity');
  set availableQuantity(int? value) =>
      setField<int>('available_quantity', value);

  int? get portsUsed => getField<int>('ports_used');
  set portsUsed(int? value) => setField<int>('ports_used', value);
}
