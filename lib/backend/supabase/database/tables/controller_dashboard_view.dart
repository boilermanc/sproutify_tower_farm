import '../database.dart';

class ControllerDashboardViewTable
    extends SupabaseTable<ControllerDashboardViewRow> {
  @override
  String get tableName => 'controller_dashboard_view';

  @override
  ControllerDashboardViewRow createRow(Map<String, dynamic> data) =>
      ControllerDashboardViewRow(data);
}

class ControllerDashboardViewRow extends SupabaseDataRow {
  ControllerDashboardViewRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ControllerDashboardViewTable();

  String? get controllerId => getField<String>('controller_id');
  set controllerId(String? value) => setField<String>('controller_id', value);

  String? get controllerName => getField<String>('controller_name');
  set controllerName(String? value) =>
      setField<String>('controller_name', value);

  String? get controllerType => getField<String>('controller_type');
  set controllerType(String? value) =>
      setField<String>('controller_type', value);

  String? get modelNumber => getField<String>('model_number');
  set modelNumber(String? value) => setField<String>('model_number', value);

  String? get controllerLocation => getField<String>('controller_location');
  set controllerLocation(String? value) =>
      setField<String>('controller_location', value);

  String? get firmwareVersion => getField<String>('firmware_version');
  set firmwareVersion(String? value) =>
      setField<String>('firmware_version', value);

  String? get macAddress => getField<String>('mac_address');
  set macAddress(String? value) => setField<String>('mac_address', value);

  bool? get controllerOnline => getField<bool>('controller_online');
  set controllerOnline(bool? value) =>
      setField<bool>('controller_online', value);

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);

  String? get farmName => getField<String>('farm_name');
  set farmName(String? value) => setField<String>('farm_name', value);

  String? get farmCode => getField<String>('farm_code');
  set farmCode(String? value) => setField<String>('farm_code', value);

  int? get totalMechanicalsControlled =>
      getField<int>('total_mechanicals_controlled');
  set totalMechanicalsControlled(int? value) =>
      setField<int>('total_mechanicals_controlled', value);

  int? get activeMechanicalsControlled =>
      getField<int>('active_mechanicals_controlled');
  set activeMechanicalsControlled(int? value) =>
      setField<int>('active_mechanicals_controlled', value);

  String? get controlledEquipmentNames =>
      getField<String>('controlled_equipment_names');
  set controlledEquipmentNames(String? value) =>
      setField<String>('controlled_equipment_names', value);

  String? get controlledCategories => getField<String>('controlled_categories');
  set controlledCategories(String? value) =>
      setField<String>('controlled_categories', value);

  String? get channelAssignments => getField<String>('channel_assignments');
  set channelAssignments(String? value) =>
      setField<String>('channel_assignments', value);

  double? get totalEnergyControlledKwh =>
      getField<double>('total_energy_controlled_kwh');
  set totalEnergyControlledKwh(double? value) =>
      setField<double>('total_energy_controlled_kwh', value);

  double? get totalCostControlledUsd =>
      getField<double>('total_cost_controlled_usd');
  set totalCostControlledUsd(double? value) =>
      setField<double>('total_cost_controlled_usd', value);

  String? get controllerStatus => getField<String>('controller_status');
  set controllerStatus(String? value) =>
      setField<String>('controller_status', value);

  DateTime? get lastEquipmentAction =>
      getField<DateTime>('last_equipment_action');
  set lastEquipmentAction(DateTime? value) =>
      setField<DateTime>('last_equipment_action', value);

  DateTime? get controllerLastUpdate =>
      getField<DateTime>('controller_last_update');
  set controllerLastUpdate(DateTime? value) =>
      setField<DateTime>('controller_last_update', value);
}
