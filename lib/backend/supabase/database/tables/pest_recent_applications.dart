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
}
