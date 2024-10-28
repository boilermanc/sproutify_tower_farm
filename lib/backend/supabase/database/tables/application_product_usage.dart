import '../database.dart';

class ApplicationProductUsageTable
    extends SupabaseTable<ApplicationProductUsageRow> {
  @override
  String get tableName => 'application_product_usage';

  @override
  ApplicationProductUsageRow createRow(Map<String, dynamic> data) =>
      ApplicationProductUsageRow(data);
}

class ApplicationProductUsageRow extends SupabaseDataRow {
  ApplicationProductUsageRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ApplicationProductUsageTable();

  String get usageId => getField<String>('usage_id')!;
  set usageId(String value) => setField<String>('usage_id', value);

  String get applicationId => getField<String>('application_id')!;
  set applicationId(String value) => setField<String>('application_id', value);

  String get productId => getField<String>('product_id')!;
  set productId(String value) => setField<String>('product_id', value);

  double get quantityUsed => getField<double>('quantity_used')!;
  set quantityUsed(double value) => setField<double>('quantity_used', value);

  String get unit => getField<String>('unit')!;
  set unit(String value) => setField<String>('unit', value);

  String? get treatmentArea => getField<String>('treatment_area');
  set treatmentArea(String? value) => setField<String>('treatment_area', value);
}
