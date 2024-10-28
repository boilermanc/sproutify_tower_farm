import '../database.dart';

class ControllerTypesTable extends SupabaseTable<ControllerTypesRow> {
  @override
  String get tableName => 'controller_types';

  @override
  ControllerTypesRow createRow(Map<String, dynamic> data) =>
      ControllerTypesRow(data);
}

class ControllerTypesRow extends SupabaseDataRow {
  ControllerTypesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ControllerTypesTable();

  String get typeId => getField<String>('type_id')!;
  set typeId(String value) => setField<String>('type_id', value);

  String get serialNumber => getField<String>('serial_number')!;
  set serialNumber(String value) => setField<String>('serial_number', value);

  String? get vendorName => getField<String>('vendor_name');
  set vendorName(String? value) => setField<String>('vendor_name', value);

  String? get vendorContactInfo => getField<String>('vendor_contact_info');
  set vendorContactInfo(String? value) =>
      setField<String>('vendor_contact_info', value);

  String? get firmwareVersion => getField<String>('firmware_version');
  set firmwareVersion(String? value) =>
      setField<String>('firmware_version', value);

  String? get modelNumber => getField<String>('model_number');
  set modelNumber(String? value) => setField<String>('model_number', value);

  String? get sproutifyModel => getField<String>('sproutify_model');
  set sproutifyModel(String? value) =>
      setField<String>('sproutify_model', value);

  String? get controlPurpose => getField<String>('control_purpose');
  set controlPurpose(String? value) =>
      setField<String>('control_purpose', value);

  String? get categoryId => getField<String>('category_id');
  set categoryId(String? value) => setField<String>('category_id', value);

  bool? get isLightingController => getField<bool>('is_lighting_controller');
  set isLightingController(bool? value) =>
      setField<bool>('is_lighting_controller', value);

  int? get relayCount => getField<int>('relay_count');
  set relayCount(int? value) => setField<int>('relay_count', value);

  List<int> get defaultRelayPins => getListField<int>('default_relay_pins');
  set defaultRelayPins(List<int>? value) =>
      setListField<int>('default_relay_pins', value);
}
