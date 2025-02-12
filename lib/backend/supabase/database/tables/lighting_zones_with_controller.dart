import '../database.dart';

class LightingZonesWithControllerTable
    extends SupabaseTable<LightingZonesWithControllerRow> {
  @override
  String get tableName => 'lighting_zones_with_controller';

  @override
  LightingZonesWithControllerRow createRow(Map<String, dynamic> data) =>
      LightingZonesWithControllerRow(data);
}

class LightingZonesWithControllerRow extends SupabaseDataRow {
  LightingZonesWithControllerRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => LightingZonesWithControllerTable();

  String? get zoneId => getField<String>('zone_id');
  set zoneId(String? value) => setField<String>('zone_id', value);

  String? get zoneName => getField<String>('zone_name');
  set zoneName(String? value) => setField<String>('zone_name', value);

  String? get lightingControllerId =>
      getField<String>('lighting_controller_id');
  set lightingControllerId(String? value) =>
      setField<String>('lighting_controller_id', value);

  String? get controllerId => getField<String>('controller_id');
  set controllerId(String? value) => setField<String>('controller_id', value);

  String? get controllerName => getField<String>('controller_name');
  set controllerName(String? value) =>
      setField<String>('controller_name', value);

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

  String? get relayDescription => getField<String>('relay_description');
  set relayDescription(String? value) =>
      setField<String>('relay_description', value);

  String? get color => getField<String>('color');
  set color(String? value) => setField<String>('color', value);

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);
}
