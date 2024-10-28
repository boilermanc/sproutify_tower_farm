import '../database.dart';

class ControllersTable extends SupabaseTable<ControllersRow> {
  @override
  String get tableName => 'controllers';

  @override
  ControllersRow createRow(Map<String, dynamic> data) => ControllersRow(data);
}

class ControllersRow extends SupabaseDataRow {
  ControllersRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ControllersTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);

  String? get controllerName => getField<String>('controller_name');
  set controllerName(String? value) =>
      setField<String>('controller_name', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  String? get typeId => getField<String>('type_id');
  set typeId(String? value) => setField<String>('type_id', value);

  String? get location => getField<String>('location');
  set location(String? value) => setField<String>('location', value);

  String? get firmwareVersion => getField<String>('firmware_version');
  set firmwareVersion(String? value) =>
      setField<String>('firmware_version', value);

  String? get controllerType => getField<String>('controller_type');
  set controllerType(String? value) =>
      setField<String>('controller_type', value);

  String? get vendorName => getField<String>('vendor_name');
  set vendorName(String? value) => setField<String>('vendor_name', value);

  String? get modelNumber => getField<String>('model_number');
  set modelNumber(String? value) => setField<String>('model_number', value);

  String? get macAddress => getField<String>('mac_address');
  set macAddress(String? value) => setField<String>('mac_address', value);

  String? get sproutifyModel => getField<String>('sproutify_model');
  set sproutifyModel(String? value) =>
      setField<String>('sproutify_model', value);

  bool? get isActive => getField<bool>('is_active');
  set isActive(bool? value) => setField<bool>('is_active', value);
}
