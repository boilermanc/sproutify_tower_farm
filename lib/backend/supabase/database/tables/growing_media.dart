import '../database.dart';

class GrowingMediaTable extends SupabaseTable<GrowingMediaRow> {
  @override
  String get tableName => 'growing_media';

  @override
  GrowingMediaRow createRow(Map<String, dynamic> data) => GrowingMediaRow(data);
}

class GrowingMediaRow extends SupabaseDataRow {
  GrowingMediaRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => GrowingMediaTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get productName => getField<String>('product_name')!;
  set productName(String value) => setField<String>('product_name', value);

  String? get productDescription => getField<String>('product_description');
  set productDescription(String? value) =>
      setField<String>('product_description', value);

  String? get productSize => getField<String>('product_size');
  set productSize(String? value) => setField<String>('product_size', value);

  DateTime get dateAdded => getField<DateTime>('date_added')!;
  set dateAdded(DateTime value) => setField<DateTime>('date_added', value);

  String get addedBy => getField<String>('added_by')!;
  set addedBy(String value) => setField<String>('added_by', value);
}
