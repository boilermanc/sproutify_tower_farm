import '../database.dart';

class VendorsWithFarmStatusTable
    extends SupabaseTable<VendorsWithFarmStatusRow> {
  @override
  String get tableName => 'vendors_with_farm_status';

  @override
  VendorsWithFarmStatusRow createRow(Map<String, dynamic> data) =>
      VendorsWithFarmStatusRow(data);
}

class VendorsWithFarmStatusRow extends SupabaseDataRow {
  VendorsWithFarmStatusRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VendorsWithFarmStatusTable();

  String? get vendorId => getField<String>('vendor_id');
  set vendorId(String? value) => setField<String>('vendor_id', value);

  String? get vendorName => getField<String>('vendor_name');
  set vendorName(String? value) => setField<String>('vendor_name', value);

  String? get contactInfo => getField<String>('contact_info');
  set contactInfo(String? value) => setField<String>('contact_info', value);

  String? get contactNumber => getField<String>('contact_number');
  set contactNumber(String? value) => setField<String>('contact_number', value);

  String? get webSite => getField<String>('web_site');
  set webSite(String? value) => setField<String>('web_site', value);

  bool? get active => getField<bool>('active');
  set active(bool? value) => setField<bool>('active', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  String? get createdByUserId => getField<String>('created_by_user_id');
  set createdByUserId(String? value) =>
      setField<String>('created_by_user_id', value);

  String? get typeId => getField<String>('type_id');
  set typeId(String? value) => setField<String>('type_id', value);

  String? get typeName => getField<String>('type_name');
  set typeName(String? value) => setField<String>('type_name', value);

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);

  String? get farmVendorId => getField<String>('farm_vendor_id');
  set farmVendorId(String? value) => setField<String>('farm_vendor_id', value);

  bool? get isInFarm => getField<bool>('is_in_farm');
  set isInFarm(bool? value) => setField<bool>('is_in_farm', value);
}
