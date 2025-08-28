import '../database.dart';

class FarmVendorsTable extends SupabaseTable<FarmVendorsRow> {
  @override
  String get tableName => 'farm_vendors';

  @override
  FarmVendorsRow createRow(Map<String, dynamic> data) => FarmVendorsRow(data);
}

class FarmVendorsRow extends SupabaseDataRow {
  FarmVendorsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => FarmVendorsTable();

  String get farmVendorId => getField<String>('farm_vendor_id')!;
  set farmVendorId(String value) => setField<String>('farm_vendor_id', value);

  String get farmId => getField<String>('farm_id')!;
  set farmId(String value) => setField<String>('farm_id', value);

  String? get vendorId => getField<String>('vendor_id');
  set vendorId(String? value) => setField<String>('vendor_id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  DateTime get updatedAt => getField<DateTime>('updated_at')!;
  set updatedAt(DateTime value) => setField<DateTime>('updated_at', value);

  String get createdByUserId => getField<String>('created_by_user_id')!;
  set createdByUserId(String value) =>
      setField<String>('created_by_user_id', value);

  bool get active => getField<bool>('active')!;
  set active(bool value) => setField<bool>('active', value);

  String? get contactInfo => getField<String>('contact_info');
  set contactInfo(String? value) => setField<String>('contact_info', value);

  String? get contactNumber => getField<String>('contact_number');
  set contactNumber(String? value) => setField<String>('contact_number', value);

  String? get farmSpecificVendorId =>
      getField<String>('farm_specific_vendor_id');
  set farmSpecificVendorId(String? value) =>
      setField<String>('farm_specific_vendor_id', value);
}
