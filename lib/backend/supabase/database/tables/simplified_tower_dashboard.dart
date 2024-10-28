import '../database.dart';

class SimplifiedTowerDashboardTable
    extends SupabaseTable<SimplifiedTowerDashboardRow> {
  @override
  String get tableName => 'simplified_tower_dashboard';

  @override
  SimplifiedTowerDashboardRow createRow(Map<String, dynamic> data) =>
      SimplifiedTowerDashboardRow(data);
}

class SimplifiedTowerDashboardRow extends SupabaseDataRow {
  SimplifiedTowerDashboardRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SimplifiedTowerDashboardTable();

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);

  int? get towerId => getField<int>('tower_id');
  set towerId(int? value) => setField<int>('tower_id', value);

  String? get towerIdentifier => getField<String>('tower_identifier');
  set towerIdentifier(String? value) =>
      setField<String>('tower_identifier', value);

  String? get plantName => getField<String>('plant_name');
  set plantName(String? value) => setField<String>('plant_name', value);

  DateTime? get actionDate => getField<DateTime>('action_date');
  set actionDate(DateTime? value) => setField<DateTime>('action_date', value);

  String? get actionName => getField<String>('action_name');
  set actionName(String? value) => setField<String>('action_name', value);

  String? get actionColor => getField<String>('action_color');
  set actionColor(String? value) => setField<String>('action_color', value);

  int? get contentId => getField<int>('content_id');
  set contentId(int? value) => setField<int>('content_id', value);

  int? get totalQuantity => getField<int>('total_quantity');
  set totalQuantity(int? value) => setField<int>('total_quantity', value);

  int? get availableQuantity => getField<int>('available_quantity');
  set availableQuantity(int? value) =>
      setField<int>('available_quantity', value);

  DateTime? get seededDate => getField<DateTime>('seeded_date');
  set seededDate(DateTime? value) => setField<DateTime>('seeded_date', value);

  int? get totalPorts => getField<int>('total_ports');
  set totalPorts(int? value) => setField<int>('total_ports', value);

  int? get usedPorts => getField<int>('used_ports');
  set usedPorts(int? value) => setField<int>('used_ports', value);

  int? get plantedPorts => getField<int>('planted_ports');
  set plantedPorts(int? value) => setField<int>('planted_ports', value);

  int? get availablePorts => getField<int>('available_ports');
  set availablePorts(int? value) => setField<int>('available_ports', value);
}
