import '../database.dart';

class FarmsTable extends SupabaseTable<FarmsRow> {
  @override
  String get tableName => 'farms';

  @override
  FarmsRow createRow(Map<String, dynamic> data) => FarmsRow(data);
}

class FarmsRow extends SupabaseDataRow {
  FarmsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => FarmsTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get farmName => getField<String>('farm_name')!;
  set farmName(String value) => setField<String>('farm_name', value);

  List<String> get location => getListField<String>('location');
  set location(List<String>? value) => setListField<String>('location', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  String? get farmCode => getField<String>('farm_code');
  set farmCode(String? value) => setField<String>('farm_code', value);

  String? get timeLocation => getField<String>('time_location');
  set timeLocation(String? value) => setField<String>('time_location', value);

  String get measurementSystem => getField<String>('measurement_system')!;
  set measurementSystem(String value) =>
      setField<String>('measurement_system', value);

  String? get city => getField<String>('city');
  set city(String? value) => setField<String>('city', value);

  String? get state => getField<String>('state');
  set state(String? value) => setField<String>('state', value);

  String? get countryCode => getField<String>('country_code');
  set countryCode(String? value) => setField<String>('country_code', value);

  String? get postalCode => getField<String>('postal_code');
  set postalCode(String? value) => setField<String>('postal_code', value);

  String? get streetAddress => getField<String>('street_address');
  set streetAddress(String? value) => setField<String>('street_address', value);

  String? get numberOfEmployees => getField<String>('number_of_employees');
  set numberOfEmployees(String? value) =>
      setField<String>('number_of_employees', value);

  int? get numberOfTowers => getField<int>('number_of_towers');
  set numberOfTowers(int? value) => setField<int>('number_of_towers', value);

  String? get createdBy => getField<String>('created_by');
  set createdBy(String? value) => setField<String>('created_by', value);

  bool? get hasWaterTests => getField<bool>('has_water_tests');
  set hasWaterTests(bool? value) => setField<bool>('has_water_tests', value);

  bool? get hasVendors => getField<bool>('has_vendors');
  set hasVendors(bool? value) => setField<bool>('has_vendors', value);

  bool? get hasTowers => getField<bool>('has_towers');
  set hasTowers(bool? value) => setField<bool>('has_towers', value);

  bool? get hasLighting => getField<bool>('has_lighting');
  set hasLighting(bool? value) => setField<bool>('has_lighting', value);

  bool? get usesLighting => getField<bool>('uses_lighting');
  set usesLighting(bool? value) => setField<bool>('uses_lighting', value);
}
