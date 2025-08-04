import '../database.dart';

class MechanicalDashboardSummaryTable
    extends SupabaseTable<MechanicalDashboardSummaryRow> {
  @override
  String get tableName => 'mechanical_dashboard_summary';

  @override
  MechanicalDashboardSummaryRow createRow(Map<String, dynamic> data) =>
      MechanicalDashboardSummaryRow(data);
}

class MechanicalDashboardSummaryRow extends SupabaseDataRow {
  MechanicalDashboardSummaryRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => MechanicalDashboardSummaryTable();

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);

  int? get totalEquipment => getField<int>('total_equipment');
  set totalEquipment(int? value) => setField<int>('total_equipment', value);

  int? get activeEquipment => getField<int>('active_equipment');
  set activeEquipment(int? value) => setField<int>('active_equipment', value);

  int? get inactiveEquipment => getField<int>('inactive_equipment');
  set inactiveEquipment(int? value) =>
      setField<int>('inactive_equipment', value);

  double? get totalCurrentEnergyKwh =>
      getField<double>('total_current_energy_kwh');
  set totalCurrentEnergyKwh(double? value) =>
      setField<double>('total_current_energy_kwh', value);

  double? get totalCurrentHourlyCost =>
      getField<double>('total_current_hourly_cost');
  set totalCurrentHourlyCost(double? value) =>
      setField<double>('total_current_hourly_cost', value);

  double? get totalRuntimeHoursToday =>
      getField<double>('total_runtime_hours_today');
  set totalRuntimeHoursToday(double? value) =>
      setField<double>('total_runtime_hours_today', value);

  double? get avgRuntimeHoursToday =>
      getField<double>('avg_runtime_hours_today');
  set avgRuntimeHoursToday(double? value) =>
      setField<double>('avg_runtime_hours_today', value);

  int? get equipmentWithControllers =>
      getField<int>('equipment_with_controllers');
  set equipmentWithControllers(int? value) =>
      setField<int>('equipment_with_controllers', value);

  int? get equipmentWithOfflineControllers =>
      getField<int>('equipment_with_offline_controllers');
  set equipmentWithOfflineControllers(int? value) =>
      setField<int>('equipment_with_offline_controllers', value);

  int? get climateControlCount => getField<int>('climate_control_count');
  set climateControlCount(int? value) =>
      setField<int>('climate_control_count', value);

  int? get airCirculationCount => getField<int>('air_circulation_count');
  set airCirculationCount(int? value) =>
      setField<int>('air_circulation_count', value);

  int? get waterManagementCount => getField<int>('water_management_count');
  set waterManagementCount(int? value) =>
      setField<int>('water_management_count', value);

  int? get climateControlActive => getField<int>('climate_control_active');
  set climateControlActive(int? value) =>
      setField<int>('climate_control_active', value);

  int? get airCirculationActive => getField<int>('air_circulation_active');
  set airCirculationActive(int? value) =>
      setField<int>('air_circulation_active', value);

  int? get waterManagementActive => getField<int>('water_management_active');
  set waterManagementActive(int? value) =>
      setField<int>('water_management_active', value);
}
