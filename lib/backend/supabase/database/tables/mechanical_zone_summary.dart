import '../database.dart';

class MechanicalZoneSummaryTable
    extends SupabaseTable<MechanicalZoneSummaryRow> {
  @override
  String get tableName => 'mechanical_zone_summary';

  @override
  MechanicalZoneSummaryRow createRow(Map<String, dynamic> data) =>
      MechanicalZoneSummaryRow(data);
}

class MechanicalZoneSummaryRow extends SupabaseDataRow {
  MechanicalZoneSummaryRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => MechanicalZoneSummaryTable();

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);

  String? get zoneName => getField<String>('zone_name');
  set zoneName(String? value) => setField<String>('zone_name', value);

  int? get totalEquipmentInZone => getField<int>('total_equipment_in_zone');
  set totalEquipmentInZone(int? value) =>
      setField<int>('total_equipment_in_zone', value);

  int? get activeEquipmentInZone => getField<int>('active_equipment_in_zone');
  set activeEquipmentInZone(int? value) =>
      setField<int>('active_equipment_in_zone', value);

  double? get zoneCurrentEnergyKwh =>
      getField<double>('zone_current_energy_kwh');
  set zoneCurrentEnergyKwh(double? value) =>
      setField<double>('zone_current_energy_kwh', value);

  double? get zoneCurrentHourlyCost =>
      getField<double>('zone_current_hourly_cost');
  set zoneCurrentHourlyCost(double? value) =>
      setField<double>('zone_current_hourly_cost', value);

  int? get uniqueControllersInZone =>
      getField<int>('unique_controllers_in_zone');
  set uniqueControllersInZone(int? value) =>
      setField<int>('unique_controllers_in_zone', value);

  String? get zoneStatus => getField<String>('zone_status');
  set zoneStatus(String? value) => setField<String>('zone_status', value);
}
