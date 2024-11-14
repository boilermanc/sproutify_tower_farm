import '../database.dart';

class TowerDashboardTable extends SupabaseTable<TowerDashboardRow> {
  @override
  String get tableName => 'tower_dashboard';

  @override
  TowerDashboardRow createRow(Map<String, dynamic> data) =>
      TowerDashboardRow(data);
}

class TowerDashboardRow extends SupabaseDataRow {
  TowerDashboardRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TowerDashboardTable();

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);

  DateTime? get actionDate => getField<DateTime>('action_date');
  set actionDate(DateTime? value) => setField<DateTime>('action_date', value);

  int? get actionTypeId => getField<int>('action_type_id');
  set actionTypeId(int? value) => setField<int>('action_type_id', value);

  int? get towerId => getField<int>('tower_id');
  set towerId(int? value) => setField<int>('tower_id', value);

  String? get towerLocation => getField<String>('tower_location');
  set towerLocation(String? value) => setField<String>('tower_location', value);

  String? get actionTypeName => getField<String>('action_type_name');
  set actionTypeName(String? value) =>
      setField<String>('action_type_name', value);

  String? get actionTypeColor => getField<String>('action_type_color');
  set actionTypeColor(String? value) =>
      setField<String>('action_type_color', value);

  String? get dashboardColor => getField<String>('dashboard_color');
  set dashboardColor(String? value) =>
      setField<String>('dashboard_color', value);

  int? get quantity => getField<int>('quantity');
  set quantity(int? value) => setField<int>('quantity', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get firstName => getField<String>('first_name');
  set firstName(String? value) => setField<String>('first_name', value);

  String? get lastName => getField<String>('last_name');
  set lastName(String? value) => setField<String>('last_name', value);

  String? get plantName => getField<String>('plant_name');
  set plantName(String? value) => setField<String>('plant_name', value);

  int? get portsUsed => getField<int>('ports_used');
  set portsUsed(int? value) => setField<int>('ports_used', value);

  int? get totalPorts => getField<int>('total_ports');
  set totalPorts(int? value) => setField<int>('total_ports', value);

  int? get usedPorts => getField<int>('used_ports');
  set usedPorts(int? value) => setField<int>('used_ports', value);

  int? get availablePorts => getField<int>('available_ports');
  set availablePorts(int? value) => setField<int>('available_ports', value);

  int? get towerActionCount => getField<int>('tower_action_count');
  set towerActionCount(int? value) =>
      setField<int>('tower_action_count', value);

  int? get userActionCount => getField<int>('user_action_count');
  set userActionCount(int? value) => setField<int>('user_action_count', value);

  DateTime? get seededDate => getField<DateTime>('seeded_date');
  set seededDate(DateTime? value) => setField<DateTime>('seeded_date', value);

  int? get towerContentId => getField<int>('tower_content_id');
  set towerContentId(int? value) => setField<int>('tower_content_id', value);

  int? get totalQuantity => getField<int>('total_quantity');
  set totalQuantity(int? value) => setField<int>('total_quantity', value);

  int? get availableQuantity => getField<int>('available_quantity');
  set availableQuantity(int? value) =>
      setField<int>('available_quantity', value);
}
