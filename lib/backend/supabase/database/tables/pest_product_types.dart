import '../database.dart';

class PestProductTypesTable extends SupabaseTable<PestProductTypesRow> {
  @override
  String get tableName => 'pest_product_types';

  @override
  PestProductTypesRow createRow(Map<String, dynamic> data) =>
      PestProductTypesRow(data);
}

class PestProductTypesRow extends SupabaseDataRow {
  PestProductTypesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PestProductTypesTable();

  String get productId => getField<String>('product_id')!;
  set productId(String value) => setField<String>('product_id', value);

  String get pestId => getField<String>('pest_id')!;
  set pestId(String value) => setField<String>('pest_id', value);

  String? get notes => getField<String>('notes');
  set notes(String? value) => setField<String>('notes', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  DateTime get updatedAt => getField<DateTime>('updated_at')!;
  set updatedAt(DateTime value) => setField<DateTime>('updated_at', value);
}
