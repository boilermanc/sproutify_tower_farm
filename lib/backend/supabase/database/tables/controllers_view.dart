import '../database.dart';

class ControllersViewTable extends SupabaseTable<ControllersViewRow> {
  @override
  String get tableName => 'controllers_view';

  @override
  ControllersViewRow createRow(Map<String, dynamic> data) =>
      ControllersViewRow(data);
}

class ControllersViewRow extends SupabaseDataRow {
  ControllersViewRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ControllersViewTable();

  String? get lightingControllerId =>
      getField<String>('lighting_controller_id');
  set lightingControllerId(String? value) =>
      setField<String>('lighting_controller_id', value);

  String? get controllerName => getField<String>('controller_name');
  set controllerName(String? value) =>
      setField<String>('controller_name', value);

  String? get ipAddress => getField<String>('ip_address');
  set ipAddress(String? value) => setField<String>('ip_address', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  DateTime? get lastCommunication => getField<DateTime>('last_communication');
  set lastCommunication(DateTime? value) =>
      setField<DateTime>('last_communication', value);

  bool? get isActive => getField<bool>('is_active');
  set isActive(bool? value) => setField<bool>('is_active', value);

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);
}
