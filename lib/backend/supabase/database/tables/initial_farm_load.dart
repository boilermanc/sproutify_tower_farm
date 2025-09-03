import '../database.dart';

class InitialFarmLoadTable extends SupabaseTable<InitialFarmLoadRow> {
  @override
  String get tableName => 'initial_farm_load';

  @override
  InitialFarmLoadRow createRow(Map<String, dynamic> data) =>
      InitialFarmLoadRow(data);
}

class InitialFarmLoadRow extends SupabaseDataRow {
  InitialFarmLoadRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => InitialFarmLoadTable();

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get firstName => getField<String>('first_name');
  set firstName(String? value) => setField<String>('first_name', value);

  String? get lastName => getField<String>('last_name');
  set lastName(String? value) => setField<String>('last_name', value);

  String? get fullName => getField<String>('full_name');
  set fullName(String? value) => setField<String>('full_name', value);

  String? get phoneNumber => getField<String>('phone_number');
  set phoneNumber(String? value) => setField<String>('phone_number', value);

  String? get profileStatus => getField<String>('profile_status');
  set profileStatus(String? value) => setField<String>('profile_status', value);

  String? get profileImageUrl => getField<String>('profile_image_url');
  set profileImageUrl(String? value) =>
      setField<String>('profile_image_url', value);

  List<String> get notificationPreferences =>
      getListField<String>('notification_preferences');
  set notificationPreferences(List<String>? value) =>
      setListField<String>('notification_preferences', value);

  bool? get needsSetup => getField<bool>('needs_setup');
  set needsSetup(bool? value) => setField<bool>('needs_setup', value);

  DateTime? get profileCreatedAt => getField<DateTime>('profile_created_at');
  set profileCreatedAt(DateTime? value) =>
      setField<DateTime>('profile_created_at', value);

  DateTime? get profileUpdatedAt => getField<DateTime>('profile_updated_at');
  set profileUpdatedAt(DateTime? value) =>
      setField<DateTime>('profile_updated_at', value);

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);

  String? get farmName => getField<String>('farm_name');
  set farmName(String? value) => setField<String>('farm_name', value);

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

  double? get latitude => getField<double>('latitude');
  set latitude(double? value) => setField<double>('latitude', value);

  double? get longitude => getField<double>('longitude');
  set longitude(double? value) => setField<double>('longitude', value);

  String? get numberOfEmployees => getField<String>('number_of_employees');
  set numberOfEmployees(String? value) =>
      setField<String>('number_of_employees', value);

  int? get numberOfTowers => getField<int>('number_of_towers');
  set numberOfTowers(int? value) => setField<int>('number_of_towers', value);

  int? get spacerSizeCount => getField<int>('spacer_size_count');
  set spacerSizeCount(int? value) => setField<int>('spacer_size_count', value);

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

  String? get farmStatus => getField<String>('farm_status');
  set farmStatus(String? value) => setField<String>('farm_status', value);

  String? get farmSize => getField<String>('farm_size');
  set farmSize(String? value) => setField<String>('farm_size', value);

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

  String? get farmCreatedBy => getField<String>('farm_created_by');
  set farmCreatedBy(String? value) =>
      setField<String>('farm_created_by', value);

  DateTime? get farmCreatedAt => getField<DateTime>('farm_created_at');
  set farmCreatedAt(DateTime? value) =>
      setField<DateTime>('farm_created_at', value);

  DateTime? get farmUpdatedAt => getField<DateTime>('farm_updated_at');
  set farmUpdatedAt(DateTime? value) =>
      setField<DateTime>('farm_updated_at', value);

  bool? get hasPlants => getField<bool>('has_plants');
  set hasPlants(bool? value) => setField<bool>('has_plants', value);

  bool? get hasChemicals => getField<bool>('has_chemicals');
  set hasChemicals(bool? value) => setField<bool>('has_chemicals', value);

  bool? get hasFarm => getField<bool>('has_farm');
  set hasFarm(bool? value) => setField<bool>('has_farm', value);

  bool? get hasCoordinates => getField<bool>('has_coordinates');
  set hasCoordinates(bool? value) => setField<bool>('has_coordinates', value);
}
