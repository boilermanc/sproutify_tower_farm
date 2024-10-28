import '../database.dart';

class MechanicalsHeaterDetailsTable
    extends SupabaseTable<MechanicalsHeaterDetailsRow> {
  @override
  String get tableName => 'mechanicals_heater_details';

  @override
  MechanicalsHeaterDetailsRow createRow(Map<String, dynamic> data) =>
      MechanicalsHeaterDetailsRow(data);
}

class MechanicalsHeaterDetailsRow extends SupabaseDataRow {
  MechanicalsHeaterDetailsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => MechanicalsHeaterDetailsTable();

  int get heaterDetailId => getField<int>('heater_detail_id')!;
  set heaterDetailId(int value) => setField<int>('heater_detail_id', value);

  int? get mechanicalId => getField<int>('mechanical_id');
  set mechanicalId(int? value) => setField<int>('mechanical_id', value);

  String? get fuelType => getField<String>('fuel_type');
  set fuelType(String? value) => setField<String>('fuel_type', value);

  double? get btuRating => getField<double>('btu_rating');
  set btuRating(double? value) => setField<double>('btu_rating', value);

  String? get heatingCapacity => getField<String>('heating_capacity');
  set heatingCapacity(String? value) =>
      setField<String>('heating_capacity', value);

  String? get installationType => getField<String>('installation_type');
  set installationType(String? value) =>
      setField<String>('installation_type', value);

  String? get dimensions => getField<String>('dimensions');
  set dimensions(String? value) => setField<String>('dimensions', value);

  double? get weight => getField<double>('weight');
  set weight(double? value) => setField<double>('weight', value);

  String? get ignitionType => getField<String>('ignition_type');
  set ignitionType(String? value) => setField<String>('ignition_type', value);

  String? get thermostatType => getField<String>('thermostat_type');
  set thermostatType(String? value) =>
      setField<String>('thermostat_type', value);

  double? get voltageRequirements => getField<double>('voltage_requirements');
  set voltageRequirements(double? value) =>
      setField<double>('voltage_requirements', value);

  double? get amperageDraw => getField<double>('amperage_draw');
  set amperageDraw(double? value) => setField<double>('amperage_draw', value);

  String? get gasConnectionSize => getField<String>('gas_connection_size');
  set gasConnectionSize(String? value) =>
      setField<String>('gas_connection_size', value);

  String? get minimumMountingHeight =>
      getField<String>('minimum_mounting_height');
  set minimumMountingHeight(String? value) =>
      setField<String>('minimum_mounting_height', value);

  String? get safetyFeatures => getField<String>('safety_features');
  set safetyFeatures(String? value) =>
      setField<String>('safety_features', value);

  String? get ventilationRequirements =>
      getField<String>('ventilation_requirements');
  set ventilationRequirements(String? value) =>
      setField<String>('ventilation_requirements', value);

  double? get efficiencyRating => getField<double>('efficiency_rating');
  set efficiencyRating(double? value) =>
      setField<double>('efficiency_rating', value);

  String? get warrantyPeriod => getField<String>('warranty_period');
  set warrantyPeriod(String? value) =>
      setField<String>('warranty_period', value);

  double? get price => getField<double>('price');
  set price(double? value) => setField<double>('price', value);

  String? get specialFeatures => getField<String>('special_features');
  set specialFeatures(String? value) =>
      setField<String>('special_features', value);
}
