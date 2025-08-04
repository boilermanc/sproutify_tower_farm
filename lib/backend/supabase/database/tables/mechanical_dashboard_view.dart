import '../database.dart';

class MechanicalDashboardViewTable
    extends SupabaseTable<MechanicalDashboardViewRow> {
  @override
  String get tableName => 'mechanical_dashboard_view';

  @override
  MechanicalDashboardViewRow createRow(Map<String, dynamic> data) =>
      MechanicalDashboardViewRow(data);
}

class MechanicalDashboardViewRow extends SupabaseDataRow {
  MechanicalDashboardViewRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => MechanicalDashboardViewTable();

  int? get mechanicalId => getField<int>('mechanical_id');
  set mechanicalId(int? value) => setField<int>('mechanical_id', value);

  String? get equipmentName => getField<String>('equipment_name');
  set equipmentName(String? value) => setField<String>('equipment_name', value);

  String? get model => getField<String>('model');
  set model(String? value) => setField<String>('model', value);

  String? get sku => getField<String>('sku');
  set sku(String? value) => setField<String>('sku', value);

  String? get measurementSystem => getField<String>('measurement_system');
  set measurementSystem(String? value) =>
      setField<String>('measurement_system', value);

  String? get equipmentColor => getField<String>('equipment_color');
  set equipmentColor(String? value) =>
      setField<String>('equipment_color', value);

  int? get categoryId => getField<int>('category_id');
  set categoryId(int? value) => setField<int>('category_id', value);

  String? get categoryName => getField<String>('category_name');
  set categoryName(String? value) => setField<String>('category_name', value);

  String? get categoryColor => getField<String>('category_color');
  set categoryColor(String? value) => setField<String>('category_color', value);

  int? get typeId => getField<int>('type_id');
  set typeId(int? value) => setField<int>('type_id', value);

  String? get typeName => getField<String>('type_name');
  set typeName(String? value) => setField<String>('type_name', value);

  String? get typeColor => getField<String>('type_color');
  set typeColor(String? value) => setField<String>('type_color', value);

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);

  String? get zoneName => getField<String>('zone_name');
  set zoneName(String? value) => setField<String>('zone_name', value);

  String? get primaryControllerId => getField<String>('primary_controller_id');
  set primaryControllerId(String? value) =>
      setField<String>('primary_controller_id', value);

  String? get primaryControllerName =>
      getField<String>('primary_controller_name');
  set primaryControllerName(String? value) =>
      setField<String>('primary_controller_name', value);

  String? get primaryControllerType =>
      getField<String>('primary_controller_type');
  set primaryControllerType(String? value) =>
      setField<String>('primary_controller_type', value);

  int? get primaryChannelNumber => getField<int>('primary_channel_number');
  set primaryChannelNumber(int? value) =>
      setField<int>('primary_channel_number', value);

  String? get primaryChannelName => getField<String>('primary_channel_name');
  set primaryChannelName(String? value) =>
      setField<String>('primary_channel_name', value);

  bool? get primaryControllerActive =>
      getField<bool>('primary_controller_active');
  set primaryControllerActive(bool? value) =>
      setField<bool>('primary_controller_active', value);

  String? get currentStatus => getField<String>('current_status');
  set currentStatus(String? value) => setField<String>('current_status', value);

  double? get currentValue => getField<double>('current_value');
  set currentValue(double? value) => setField<double>('current_value', value);

  DateTime? get lastActionDate => getField<DateTime>('last_action_date');
  set lastActionDate(DateTime? value) =>
      setField<DateTime>('last_action_date', value);

  String? get lastPerformedBy => getField<String>('last_performed_by');
  set lastPerformedBy(String? value) =>
      setField<String>('last_performed_by', value);

  int? get timesTurnedOnToday => getField<int>('times_turned_on_today');
  set timesTurnedOnToday(int? value) =>
      setField<int>('times_turned_on_today', value);

  int? get timesTurnedOffToday => getField<int>('times_turned_off_today');
  set timesTurnedOffToday(int? value) =>
      setField<int>('times_turned_off_today', value);

  double? get estimatedRuntimeHoursToday =>
      getField<double>('estimated_runtime_hours_today');
  set estimatedRuntimeHoursToday(double? value) =>
      setField<double>('estimated_runtime_hours_today', value);

  double? get estimatedHourlyKwh => getField<double>('estimated_hourly_kwh');
  set estimatedHourlyKwh(double? value) =>
      setField<double>('estimated_hourly_kwh', value);

  double? get estimatedMonthlyKwhIfContinuous =>
      getField<double>('estimated_monthly_kwh_if_continuous');
  set estimatedMonthlyKwhIfContinuous(double? value) =>
      setField<double>('estimated_monthly_kwh_if_continuous', value);

  double? get currentEnergyUsageKwh =>
      getField<double>('current_energy_usage_kwh');
  set currentEnergyUsageKwh(double? value) =>
      setField<double>('current_energy_usage_kwh', value);

  double? get currentHourlyCostUsd =>
      getField<double>('current_hourly_cost_usd');
  set currentHourlyCostUsd(double? value) =>
      setField<double>('current_hourly_cost_usd', value);

  String? get fuelType => getField<String>('fuel_type');
  set fuelType(String? value) => setField<String>('fuel_type', value);

  double? get btuRating => getField<double>('btu_rating');
  set btuRating(double? value) => setField<double>('btu_rating', value);

  String? get heatingCapacity => getField<String>('heating_capacity');
  set heatingCapacity(String? value) =>
      setField<String>('heating_capacity', value);

  double? get efficiencyRating => getField<double>('efficiency_rating');
  set efficiencyRating(double? value) =>
      setField<double>('efficiency_rating', value);

  int? get isActive => getField<int>('is_active');
  set isActive(int? value) => setField<int>('is_active', value);

  String? get statusIndicator => getField<String>('status_indicator');
  set statusIndicator(String? value) =>
      setField<String>('status_indicator', value);

  String? get equipmentDisplayType =>
      getField<String>('equipment_display_type');
  set equipmentDisplayType(String? value) =>
      setField<String>('equipment_display_type', value);

  String? get detailLine => getField<String>('detail_line');
  set detailLine(String? value) => setField<String>('detail_line', value);

  String? get connectionStatus => getField<String>('connection_status');
  set connectionStatus(String? value) =>
      setField<String>('connection_status', value);
}
