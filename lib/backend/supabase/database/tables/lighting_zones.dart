import '../database.dart';

class LightingZonesTable extends SupabaseTable<LightingZonesRow> {
  @override
  String get tableName => 'lighting_zones';

  @override
  LightingZonesRow createRow(Map<String, dynamic> data) =>
      LightingZonesRow(data);
}

class LightingZonesRow extends SupabaseDataRow {
  LightingZonesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => LightingZonesTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get farmId => getField<String>('farm_id')!;
  set farmId(String value) => setField<String>('farm_id', value);

  String get zoneName => getField<String>('zone_name')!;
  set zoneName(String value) => setField<String>('zone_name', value);

  String? get lightingControllerId =>
      getField<String>('lighting_controller_id');
  set lightingControllerId(String? value) =>
      setField<String>('lighting_controller_id', value);

  int? get startRow => getField<int>('start_row');
  set startRow(int? value) => setField<int>('start_row', value);

  int? get endRow => getField<int>('end_row');
  set endRow(int? value) => setField<int>('end_row', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  bool? get isActive => getField<bool>('is_active');
  set isActive(bool? value) => setField<bool>('is_active', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  int? get relayPin => getField<int>('relay_pin');
  set relayPin(int? value) => setField<int>('relay_pin', value);

  String? get color => getField<String>('color');
  set color(String? value) => setField<String>('color', value);

  bool get masterControlActive => getField<bool>('master_control_active')!;
  set masterControlActive(bool value) =>
      setField<bool>('master_control_active', value);

  String? get pinId => getField<String>('pin_id');
  set pinId(String? value) => setField<String>('pin_id', value);

  bool? get relayPinSet => getField<bool>('relay_pin_set');
  set relayPinSet(bool? value) => setField<bool>('relay_pin_set', value);
}
