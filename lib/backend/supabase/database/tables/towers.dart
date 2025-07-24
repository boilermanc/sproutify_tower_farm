import '../database.dart';

class TowersTable extends SupabaseTable<TowersRow> {
  @override
  String get tableName => 'towers';

  @override
  TowersRow createRow(Map<String, dynamic> data) => TowersRow(data);
}

class TowersRow extends SupabaseDataRow {
  TowersRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TowersTable();

  int get towerId => getField<int>('tower_id')!;
  set towerId(int value) => setField<int>('tower_id', value);

  String get farmId => getField<String>('farm_id')!;
  set farmId(String value) => setField<String>('farm_id', value);

  int get rowNumber => getField<int>('row_number')!;
  set rowNumber(int value) => setField<int>('row_number', value);

  int get towerNumberWithinRow => getField<int>('tower_number_within_row')!;
  set towerNumberWithinRow(int value) =>
      setField<int>('tower_number_within_row', value);

  int? get numPorts => getField<int>('num_ports');
  set numPorts(int? value) => setField<int>('num_ports', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  String? get createdBy => getField<String>('created_by');
  set createdBy(String? value) => setField<String>('created_by', value);

  bool? get hasCamera => getField<bool>('has_camera');
  set hasCamera(bool? value) => setField<bool>('has_camera', value);

  bool? get isSpacerTray => getField<bool>('is_spacer_tray');
  set isSpacerTray(bool? value) => setField<bool>('is_spacer_tray', value);

  bool get isActive => getField<bool>('is_active')!;
  set isActive(bool value) => setField<bool>('is_active', value);
}
