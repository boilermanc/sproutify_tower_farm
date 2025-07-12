import '../database.dart';

class FarmsWithFormattedAddressTable
    extends SupabaseTable<FarmsWithFormattedAddressRow> {
  @override
  String get tableName => 'farms_with_formatted_address';

  @override
  FarmsWithFormattedAddressRow createRow(Map<String, dynamic> data) =>
      FarmsWithFormattedAddressRow(data);
}

class FarmsWithFormattedAddressRow extends SupabaseDataRow {
  FarmsWithFormattedAddressRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => FarmsWithFormattedAddressTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  String? get farmName => getField<String>('farm_name');
  set farmName(String? value) => setField<String>('farm_name', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  String? get farmCode => getField<String>('farm_code');
  set farmCode(String? value) => setField<String>('farm_code', value);

  String? get timeLocation => getField<String>('time_location');
  set timeLocation(String? value) => setField<String>('time_location', value);

  String? get measurementSystem => getField<String>('measurement_system');
  set measurementSystem(String? value) =>
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

  bool? get usesLighting => getField<bool>('uses_lighting');
  set usesLighting(bool? value) => setField<bool>('uses_lighting', value);

  String? get farmType => getField<String>('farm_type');
  set farmType(String? value) => setField<String>('farm_type', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  String? get farmSize => getField<String>('farm_size');
  set farmSize(String? value) => setField<String>('farm_size', value);

  double? get latitude => getField<double>('latitude');
  set latitude(double? value) => setField<double>('latitude', value);

  double? get longitude => getField<double>('longitude');
  set longitude(double? value) => setField<double>('longitude', value);

  String? get farmImageUrl => getField<String>('farm_image_url');
  set farmImageUrl(String? value) => setField<String>('farm_image_url', value);

  String? get farmIconUrl => getField<String>('farm_icon_url');
  set farmIconUrl(String? value) => setField<String>('farm_icon_url', value);

  List<String> get growingEnvironments =>
      getListField<String>('growing_environments');
  set growingEnvironments(List<String>? value) =>
      setListField<String>('growing_environments', value);

  String? get appUsageDescription => getField<String>('app_usage_description');
  set appUsageDescription(String? value) =>
      setField<String>('app_usage_description', value);

  String? get addressLine2 => getField<String>('address_line_2');
  set addressLine2(String? value) => setField<String>('address_line_2', value);

  String? get neighborhood => getField<String>('neighborhood');
  set neighborhood(String? value) => setField<String>('neighborhood', value);

  String? get county => getField<String>('county');
  set county(String? value) => setField<String>('county', value);

  String? get suburb => getField<String>('suburb');
  set suburb(String? value) => setField<String>('suburb', value);

  String? get district => getField<String>('district');
  set district(String? value) => setField<String>('district', value);

  String? get addressFormatType => getField<String>('address_format_type');
  set addressFormatType(String? value) =>
      setField<String>('address_format_type', value);

  String? get formattedAddress => getField<String>('formatted_address');
  set formattedAddress(String? value) =>
      setField<String>('formatted_address', value);
}
