import '../database.dart';

class StickyCardLocationsTable extends SupabaseTable<StickyCardLocationsRow> {
  @override
  String get tableName => 'sticky_card_locations';

  @override
  StickyCardLocationsRow createRow(Map<String, dynamic> data) =>
      StickyCardLocationsRow(data);
}

class StickyCardLocationsRow extends SupabaseDataRow {
  StickyCardLocationsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => StickyCardLocationsTable();

  String get locationId => getField<String>('location_id')!;
  set locationId(String value) => setField<String>('location_id', value);

  String get farmId => getField<String>('farm_id')!;
  set farmId(String value) => setField<String>('farm_id', value);

  int? get towerId => getField<int>('tower_id');
  set towerId(int? value) => setField<int>('tower_id', value);

  String get locationCode => getField<String>('location_code')!;
  set locationCode(String value) => setField<String>('location_code', value);

  String get locationName => getField<String>('location_name')!;
  set locationName(String value) => setField<String>('location_name', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  bool? get isActive => getField<bool>('is_active');
  set isActive(bool? value) => setField<bool>('is_active', value);

  String? get tableZoneId => getField<String>('table_zone_id');
  set tableZoneId(String? value) => setField<String>('table_zone_id', value);
}
