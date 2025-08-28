import '../database.dart';

class FarmSpecificVendorsTable extends SupabaseTable<FarmSpecificVendorsRow> {
  @override
  String get tableName => 'farm_specific_vendors';

  @override
  FarmSpecificVendorsRow createRow(Map<String, dynamic> data) =>
      FarmSpecificVendorsRow(data);
}

class FarmSpecificVendorsRow extends SupabaseDataRow {
  FarmSpecificVendorsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => FarmSpecificVendorsTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get farmId => getField<String>('farm_id')!;
  set farmId(String value) => setField<String>('farm_id', value);

  String get businessName => getField<String>('business_name')!;
  set businessName(String value) => setField<String>('business_name', value);

  String? get mainContactName => getField<String>('main_contact_name');
  set mainContactName(String? value) =>
      setField<String>('main_contact_name', value);

  String? get phoneNumber => getField<String>('phone_number');
  set phoneNumber(String? value) => setField<String>('phone_number', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get vendorTypeId => getField<String>('vendor_type_id');
  set vendorTypeId(String? value) => setField<String>('vendor_type_id', value);

  String? get notes => getField<String>('notes');
  set notes(String? value) => setField<String>('notes', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  String get createdByUserId => getField<String>('created_by_user_id')!;
  set createdByUserId(String value) =>
      setField<String>('created_by_user_id', value);
}
