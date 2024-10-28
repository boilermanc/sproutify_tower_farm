import '../database.dart';

class MethodProductDefaultsTable
    extends SupabaseTable<MethodProductDefaultsRow> {
  @override
  String get tableName => 'method_product_defaults';

  @override
  MethodProductDefaultsRow createRow(Map<String, dynamic> data) =>
      MethodProductDefaultsRow(data);
}

class MethodProductDefaultsRow extends SupabaseDataRow {
  MethodProductDefaultsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => MethodProductDefaultsTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get methodId => getField<String>('method_id')!;
  set methodId(String value) => setField<String>('method_id', value);

  String get productId => getField<String>('product_id')!;
  set productId(String value) => setField<String>('product_id', value);

  double get defaultQuantity => getField<double>('default_quantity')!;
  set defaultQuantity(double value) =>
      setField<double>('default_quantity', value);

  String get defaultUnit => getField<String>('default_unit')!;
  set defaultUnit(String value) => setField<String>('default_unit', value);
}
