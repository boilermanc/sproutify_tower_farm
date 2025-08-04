import '../database.dart';

class TowerDisplayStatusMobileTable
    extends SupabaseTable<TowerDisplayStatusMobileRow> {
  @override
  String get tableName => 'tower_display_status_mobile';

  @override
  TowerDisplayStatusMobileRow createRow(Map<String, dynamic> data) =>
      TowerDisplayStatusMobileRow(data);
}

class TowerDisplayStatusMobileRow extends SupabaseDataRow {
  TowerDisplayStatusMobileRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TowerDisplayStatusMobileTable();

  int? get towerId => getField<int>('tower_id');
  set towerId(int? value) => setField<int>('tower_id', value);

  String? get towerIdentifier => getField<String>('tower_identifier');
  set towerIdentifier(String? value) =>
      setField<String>('tower_identifier', value);

  String? get towerStatus => getField<String>('tower_status');
  set towerStatus(String? value) => setField<String>('tower_status', value);

  String? get statusBackgroundColor =>
      getField<String>('status_background_color');
  set statusBackgroundColor(String? value) =>
      setField<String>('status_background_color', value);

  String? get statusTextColor => getField<String>('status_text_color');
  set statusTextColor(String? value) =>
      setField<String>('status_text_color', value);

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);

  int? get availablePorts => getField<int>('available_ports');
  set availablePorts(int? value) => setField<int>('available_ports', value);

  int? get totalPorts => getField<int>('total_ports');
  set totalPorts(int? value) => setField<int>('total_ports', value);
}
