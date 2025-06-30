import '../database.dart';

class ProductExtractedIntervalsTable
    extends SupabaseTable<ProductExtractedIntervalsRow> {
  @override
  String get tableName => 'product_extracted_intervals';

  @override
  ProductExtractedIntervalsRow createRow(Map<String, dynamic> data) =>
      ProductExtractedIntervalsRow(data);
}

class ProductExtractedIntervalsRow extends SupabaseDataRow {
  ProductExtractedIntervalsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ProductExtractedIntervalsTable();

  String? get productItemId => getField<String>('product_item_id');
  set productItemId(String? value) =>
      setField<String>('product_item_id', value);

  int? get normalInterval => getField<int>('normal_interval');
  set normalInterval(int? value) => setField<int>('normal_interval', value);

  String? get normalIntervalUnit => getField<String>('normal_interval_unit');
  set normalIntervalUnit(String? value) =>
      setField<String>('normal_interval_unit', value);

  int? get extremeInterval => getField<int>('extreme_interval');
  set extremeInterval(int? value) => setField<int>('extreme_interval', value);

  String? get extremeIntervalUnit => getField<String>('extreme_interval_unit');
  set extremeIntervalUnit(String? value) =>
      setField<String>('extreme_interval_unit', value);
}
