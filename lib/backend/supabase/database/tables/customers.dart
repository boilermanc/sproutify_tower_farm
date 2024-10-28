import '../database.dart';

class CustomersTable extends SupabaseTable<CustomersRow> {
  @override
  String get tableName => 'customers';

  @override
  CustomersRow createRow(Map<String, dynamic> data) => CustomersRow(data);
}

class CustomersRow extends SupabaseDataRow {
  CustomersRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CustomersTable();

  String get customerId => getField<String>('customer_id')!;
  set customerId(String value) => setField<String>('customer_id', value);

  String get customerName => getField<String>('customer_name')!;
  set customerName(String value) => setField<String>('customer_name', value);

  String? get contactInfo => getField<String>('contact_info');
  set contactInfo(String? value) => setField<String>('contact_info', value);

  String? get contactNumber => getField<String>('contact_number');
  set contactNumber(String? value) => setField<String>('contact_number', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get streetAddress => getField<String>('street_address');
  set streetAddress(String? value) => setField<String>('street_address', value);

  String? get city => getField<String>('city');
  set city(String? value) => setField<String>('city', value);

  String? get state => getField<String>('state');
  set state(String? value) => setField<String>('state', value);

  String? get postalCode => getField<String>('postal_code');
  set postalCode(String? value) => setField<String>('postal_code', value);

  String? get country => getField<String>('country');
  set country(String? value) => setField<String>('country', value);

  bool get active => getField<bool>('active')!;
  set active(bool value) => setField<bool>('active', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  DateTime get updatedAt => getField<DateTime>('updated_at')!;
  set updatedAt(DateTime value) => setField<DateTime>('updated_at', value);

  String get createdByUserId => getField<String>('created_by_user_id')!;
  set createdByUserId(String value) =>
      setField<String>('created_by_user_id', value);

  String get farmId => getField<String>('farm_id')!;
  set farmId(String value) => setField<String>('farm_id', value);

  String? get notes => getField<String>('notes');
  set notes(String? value) => setField<String>('notes', value);

  String? get customerTypeId => getField<String>('customer_type_id');
  set customerTypeId(String? value) =>
      setField<String>('customer_type_id', value);
}
