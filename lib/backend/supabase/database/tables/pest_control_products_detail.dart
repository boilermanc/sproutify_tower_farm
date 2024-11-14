import '../database.dart';

class PestControlProductsDetailTable
    extends SupabaseTable<PestControlProductsDetailRow> {
  @override
  String get tableName => 'pest_control_products_detail';

  @override
  PestControlProductsDetailRow createRow(Map<String, dynamic> data) =>
      PestControlProductsDetailRow(data);
}

class PestControlProductsDetailRow extends SupabaseDataRow {
  PestControlProductsDetailRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PestControlProductsDetailTable();

  String? get productId => getField<String>('product_id');
  set productId(String? value) => setField<String>('product_id', value);

  String? get productName => getField<String>('product_name');
  set productName(String? value) => setField<String>('product_name', value);

  String? get productType => getField<String>('product_type');
  set productType(String? value) => setField<String>('product_type', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  bool? get omriCertified => getField<bool>('omri_certified');
  set omriCertified(bool? value) => setField<bool>('omri_certified', value);

  String? get applicationMethods => getField<String>('application_methods');
  set applicationMethods(String? value) =>
      setField<String>('application_methods', value);

  String? get productChemicalId => getField<String>('product_chemical_id');
  set productChemicalId(String? value) =>
      setField<String>('product_chemical_id', value);

  String? get sdsId => getField<String>('sds_id');
  set sdsId(String? value) => setField<String>('sds_id', value);

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);

  String? get farmName => getField<String>('farm_name');
  set farmName(String? value) => setField<String>('farm_name', value);

  String? get applicationMethodId => getField<String>('application_method_id');
  set applicationMethodId(String? value) =>
      setField<String>('application_method_id', value);

  String? get applicationMethodName =>
      getField<String>('application_method_name');
  set applicationMethodName(String? value) =>
      setField<String>('application_method_name', value);

  String? get dosingId => getField<String>('dosing_id');
  set dosingId(String? value) => setField<String>('dosing_id', value);

  double? get baseAmount => getField<double>('base_amount');
  set baseAmount(double? value) => setField<double>('base_amount', value);

  double? get perVolume => getField<double>('per_volume');
  set perVolume(double? value) => setField<double>('per_volume', value);

  double? get standardizedAmountGallon =>
      getField<double>('standardized_amount_gallon');
  set standardizedAmountGallon(double? value) =>
      setField<double>('standardized_amount_gallon', value);

  double? get standardizedAmountLiter =>
      getField<double>('standardized_amount_liter');
  set standardizedAmountLiter(double? value) =>
      setField<double>('standardized_amount_liter', value);

  String? get dosingNotes => getField<String>('dosing_notes');
  set dosingNotes(String? value) => setField<String>('dosing_notes', value);
}
