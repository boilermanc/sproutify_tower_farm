import '../database.dart';

class ProductApplicationMethodsTable
    extends SupabaseTable<ProductApplicationMethodsRow> {
  @override
  String get tableName => 'product_application_methods';

  @override
  ProductApplicationMethodsRow createRow(Map<String, dynamic> data) =>
      ProductApplicationMethodsRow(data);
}

class ProductApplicationMethodsRow extends SupabaseDataRow {
  ProductApplicationMethodsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ProductApplicationMethodsTable();

  String get productChemicalId => getField<String>('product_chemical_id')!;
  set productChemicalId(String value) =>
      setField<String>('product_chemical_id', value);

  String get methodId => getField<String>('method_id')!;
  set methodId(String value) => setField<String>('method_id', value);
}
