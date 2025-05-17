import '../database.dart';

class FarmVendorsViewTable extends SupabaseTable<FarmVendorsViewRow> {
  @override
  String get tableName => 'farm_vendors_view';

  @override
  FarmVendorsViewRow createRow(Map<String, dynamic> data) =>
      FarmVendorsViewRow(data);
}

class FarmVendorsViewRow extends SupabaseDataRow {
  FarmVendorsViewRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => FarmVendorsViewTable();

  String? get farmVendorId => getField<String>('farm_vendor_id');
  set farmVendorId(String? value) => setField<String>('farm_vendor_id', value);

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);

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

  String? get backgroundColor => getField<String>('background_color');
  set backgroundColor(String? value) =>
      setField<String>('background_color', value);

  String? get textColor => getField<String>('text_color');
  set textColor(String? value) => setField<String>('text_color', value);

  String? get vendorType => getField<String>('vendor_type');
  set vendorType(String? value) => setField<String>('vendor_type', value);

  bool? get farmVendorActive => getField<bool>('farm_vendor_active');
  set farmVendorActive(bool? value) =>
      setField<bool>('farm_vendor_active', value);

  DateTime? get farmVendorCreatedAt =>
      getField<DateTime>('farm_vendor_created_at');
  set farmVendorCreatedAt(DateTime? value) =>
      setField<DateTime>('farm_vendor_created_at', value);

  DateTime? get farmVendorUpdatedAt =>
      getField<DateTime>('farm_vendor_updated_at');
  set farmVendorUpdatedAt(DateTime? value) =>
      setField<DateTime>('farm_vendor_updated_at', value);

  String? get createdByUserId => getField<String>('created_by_user_id');
  set createdByUserId(String? value) =>
      setField<String>('created_by_user_id', value);
}
