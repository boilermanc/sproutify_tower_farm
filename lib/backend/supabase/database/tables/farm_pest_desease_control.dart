import '../database.dart';

class FarmPestDeseaseControlTable
    extends SupabaseTable<FarmPestDeseaseControlRow> {
  @override
  String get tableName => 'farm_pest_desease_control';

  @override
  FarmPestDeseaseControlRow createRow(Map<String, dynamic> data) =>
      FarmPestDeseaseControlRow(data);
}

class FarmPestDeseaseControlRow extends SupabaseDataRow {
  FarmPestDeseaseControlRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => FarmPestDeseaseControlTable();

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);

  String? get productId => getField<String>('product_id');
  set productId(String? value) => setField<String>('product_id', value);

  String? get productName => getField<String>('product_name');
  set productName(String? value) => setField<String>('product_name', value);

  String? get productType => getField<String>('product_type');
  set productType(String? value) => setField<String>('product_type', value);

  bool? get omriRated => getField<bool>('omri_rated');
  set omriRated(bool? value) => setField<bool>('omri_rated', value);

  String? get sdsId => getField<String>('sds_id');
  set sdsId(String? value) => setField<String>('sds_id', value);

  DateTime? get lastApplicationDate =>
      getField<DateTime>('last_application_date');
  set lastApplicationDate(DateTime? value) =>
      setField<DateTime>('last_application_date', value);

  String? get location => getField<String>('location');
  set location(String? value) => setField<String>('location', value);
}
