import '../database.dart';

class FarmPestDiseaseControlTable
    extends SupabaseTable<FarmPestDiseaseControlRow> {
  @override
  String get tableName => 'farm_pest_disease_control';

  @override
  FarmPestDiseaseControlRow createRow(Map<String, dynamic> data) =>
      FarmPestDiseaseControlRow(data);
}

class FarmPestDiseaseControlRow extends SupabaseDataRow {
  FarmPestDiseaseControlRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => FarmPestDiseaseControlTable();

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);

  String? get farmProductId => getField<String>('farm_product_id');
  set farmProductId(String? value) =>
      setField<String>('farm_product_id', value);

  String? get productId => getField<String>('product_id');
  set productId(String? value) => setField<String>('product_id', value);

  String? get productName => getField<String>('product_name');
  set productName(String? value) => setField<String>('product_name', value);

  String? get productCategory => getField<String>('product_category');
  set productCategory(String? value) =>
      setField<String>('product_category', value);

  String? get productType => getField<String>('product_type');
  set productType(String? value) => setField<String>('product_type', value);

  double? get costPerUnit => getField<double>('cost_per_unit');
  set costPerUnit(double? value) => setField<double>('cost_per_unit', value);

  double? get currentQuantity => getField<double>('current_quantity');
  set currentQuantity(double? value) =>
      setField<double>('current_quantity', value);

  String? get storageLocation => getField<String>('storage_location');
  set storageLocation(String? value) =>
      setField<String>('storage_location', value);

  dynamic? get pests => getField<dynamic>('pests');
  set pests(dynamic? value) => setField<dynamic>('pests', value);

  dynamic? get diseases => getField<dynamic>('diseases');
  set diseases(dynamic? value) => setField<dynamic>('diseases', value);

  dynamic? get applicationSchedules =>
      getField<dynamic>('application_schedules');
  set applicationSchedules(dynamic? value) =>
      setField<dynamic>('application_schedules', value);

  bool? get omriCertified => getField<bool>('omri_certified');
  set omriCertified(bool? value) => setField<bool>('omri_certified', value);

  dynamic? get hazardStatements => getField<dynamic>('hazard_statements');
  set hazardStatements(dynamic? value) =>
      setField<dynamic>('hazard_statements', value);

  dynamic? get requiredPpe => getField<dynamic>('required_ppe');
  set requiredPpe(dynamic? value) => setField<dynamic>('required_ppe', value);

  DateTime? get lastApplicationDate =>
      getField<DateTime>('last_application_date');
  set lastApplicationDate(DateTime? value) =>
      setField<DateTime>('last_application_date', value);

  String? get location => getField<String>('location');
  set location(String? value) => setField<String>('location', value);
}
