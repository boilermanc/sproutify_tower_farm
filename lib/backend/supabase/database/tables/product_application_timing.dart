import '../database.dart';

class ProductApplicationTimingTable
    extends SupabaseTable<ProductApplicationTimingRow> {
  @override
  String get tableName => 'product_application_timing';

  @override
  ProductApplicationTimingRow createRow(Map<String, dynamic> data) =>
      ProductApplicationTimingRow(data);
}

class ProductApplicationTimingRow extends SupabaseDataRow {
  ProductApplicationTimingRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ProductApplicationTimingTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get productSdsId => getField<String>('product_sds_id');
  set productSdsId(String? value) => setField<String>('product_sds_id', value);

  String get scenario => getField<String>('scenario')!;
  set scenario(String value) => setField<String>('scenario', value);

  int? get intervalNormal => getField<int>('interval_normal');
  set intervalNormal(int? value) => setField<int>('interval_normal', value);

  String? get intervalNormalUnit => getField<String>('interval_normal_unit');
  set intervalNormalUnit(String? value) =>
      setField<String>('interval_normal_unit', value);

  int? get intervalExtreme => getField<int>('interval_extreme');
  set intervalExtreme(int? value) => setField<int>('interval_extreme', value);

  String? get intervalExtremeUnit => getField<String>('interval_extreme_unit');
  set intervalExtremeUnit(String? value) =>
      setField<String>('interval_extreme_unit', value);

  String? get notes => getField<String>('notes');
  set notes(String? value) => setField<String>('notes', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);
}
