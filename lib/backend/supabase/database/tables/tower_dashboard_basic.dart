import '../database.dart';

class TowerDashboardBasicTable extends SupabaseTable<TowerDashboardBasicRow> {
  @override
  String get tableName => 'tower_dashboard_basic';

  @override
  TowerDashboardBasicRow createRow(Map<String, dynamic> data) =>
      TowerDashboardBasicRow(data);
}

class TowerDashboardBasicRow extends SupabaseDataRow {
  TowerDashboardBasicRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TowerDashboardBasicTable();

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
}
