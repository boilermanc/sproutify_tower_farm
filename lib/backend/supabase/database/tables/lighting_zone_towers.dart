import '../database.dart';

class LightingZoneTowersTable extends SupabaseTable<LightingZoneTowersRow> {
  @override
  String get tableName => 'lighting_zone_towers';

  @override
  LightingZoneTowersRow createRow(Map<String, dynamic> data) =>
      LightingZoneTowersRow(data);
}

class LightingZoneTowersRow extends SupabaseDataRow {
  LightingZoneTowersRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => LightingZoneTowersTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get farmId => getField<String>('farm_id')!;
  set farmId(String value) => setField<String>('farm_id', value);

  String get towerId => getField<String>('tower_id')!;
  set towerId(String value) => setField<String>('tower_id', value);

  String get towerIdentifier => getField<String>('tower_identifier')!;
  set towerIdentifier(String value) =>
      setField<String>('tower_identifier', value);

  String? get zoneId => getField<String>('zone_id');
  set zoneId(String? value) => setField<String>('zone_id', value);

  String? get zoneName => getField<String>('zone_name');
  set zoneName(String? value) => setField<String>('zone_name', value);

  bool get isAssigned => getField<bool>('is_assigned')!;
  set isAssigned(bool value) => setField<bool>('is_assigned', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  DateTime get updatedAt => getField<DateTime>('updated_at')!;
  set updatedAt(DateTime value) => setField<DateTime>('updated_at', value);

  int? get originalTowerId => getField<int>('original_tower_id');
  set originalTowerId(int? value) => setField<int>('original_tower_id', value);
}
