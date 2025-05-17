import '../database.dart';

class LightingControllersTable extends SupabaseTable<LightingControllersRow> {
  @override
  String get tableName => 'lighting_controllers';

  @override
  LightingControllersRow createRow(Map<String, dynamic> data) =>
      LightingControllersRow(data);
}

class LightingControllersRow extends SupabaseDataRow {
  LightingControllersRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => LightingControllersTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get controllerId => getField<String>('controller_id')!;
  set controllerId(String value) => setField<String>('controller_id', value);

  String? get ipAddress => getField<String>('ip_address');
  set ipAddress(String? value) => setField<String>('ip_address', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  DateTime? get lastCommunication => getField<DateTime>('last_communication');
  set lastCommunication(DateTime? value) =>
      setField<DateTime>('last_communication', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);

  bool? get isActive => getField<bool>('is_active');
  set isActive(bool? value) => setField<bool>('is_active', value);

  String? get macAddress => getField<String>('mac_address');
  set macAddress(String? value) => setField<String>('mac_address', value);
}
