import '../database.dart';

class PestRecentApplicationsTable
    extends SupabaseTable<PestRecentApplicationsRow> {
  @override
  String get tableName => 'pest_recent_applications';

  @override
  PestRecentApplicationsRow createRow(Map<String, dynamic> data) =>
      PestRecentApplicationsRow(data);
}

class PestRecentApplicationsRow extends SupabaseDataRow {
  PestRecentApplicationsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PestRecentApplicationsTable();

  String? get productId => getField<String>('product_id');
  set productId(String? value) => setField<String>('product_id', value);

  String? get productName => getField<String>('product_name');
  set productName(String? value) => setField<String>('product_name', value);

  String? get productType => getField<String>('product_type');
  set productType(String? value) => setField<String>('product_type', value);

  String? get applicationMethodId => getField<String>('application_method_id');
  set applicationMethodId(String? value) =>
      setField<String>('application_method_id', value);

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);

  String? get productChemicalId => getField<String>('product_chemical_id');
  set productChemicalId(String? value) =>
      setField<String>('product_chemical_id', value);

  bool? get omriCertified => getField<bool>('omri_certified');
  set omriCertified(bool? value) => setField<bool>('omri_certified', value);

  String? get applicationMethods => getField<String>('application_methods');
  set applicationMethods(String? value) =>
      setField<String>('application_methods', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  String? get applicationId => getField<String>('application_id');
  set applicationId(String? value) => setField<String>('application_id', value);

  String? get treatmentArea => getField<String>('treatment_area');
  set treatmentArea(String? value) => setField<String>('treatment_area', value);

  DateTime? get applicationDate => getField<DateTime>('application_date');
  set applicationDate(DateTime? value) =>
      setField<DateTime>('application_date', value);

  double? get temperature => getField<double>('temperature');
  set temperature(double? value) => setField<double>('temperature', value);

  double? get humidity => getField<double>('humidity');
  set humidity(double? value) => setField<double>('humidity', value);

  String? get notes => getField<String>('notes');
  set notes(String? value) => setField<String>('notes', value);

  bool? get safetyConfirmed => getField<bool>('safety_confirmed');
  set safetyConfirmed(bool? value) => setField<bool>('safety_confirmed', value);

  String? get applicatorName => getField<String>('applicator_name');
  set applicatorName(String? value) =>
      setField<String>('applicator_name', value);

  double? get doseAmount => getField<double>('dose_amount');
  set doseAmount(double? value) => setField<double>('dose_amount', value);

  String? get doseUnit => getField<String>('dose_unit');
  set doseUnit(String? value) => setField<String>('dose_unit', value);

  String? get volume => getField<String>('volume');
  set volume(String? value) => setField<String>('volume', value);

  String? get volumeUnit => getField<String>('volume_unit');
  set volumeUnit(String? value) => setField<String>('volume_unit', value);
}
