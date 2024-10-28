import '../database.dart';

class ControllerTypeViewTable extends SupabaseTable<ControllerTypeViewRow> {
  @override
  String get tableName => 'controller_type_view';

  @override
  ControllerTypeViewRow createRow(Map<String, dynamic> data) =>
      ControllerTypeViewRow(data);
}

class ControllerTypeViewRow extends SupabaseDataRow {
  ControllerTypeViewRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ControllerTypeViewTable();

  String? get typeId => getField<String>('type_id');
  set typeId(String? value) => setField<String>('type_id', value);

  String? get serialNumber => getField<String>('serial_number');
  set serialNumber(String? value) => setField<String>('serial_number', value);

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

  String? get controllerType => getField<String>('controller_type');
  set controllerType(String? value) =>
      setField<String>('controller_type', value);
}
