import '../database.dart';

class VendorCategoriesTable extends SupabaseTable<VendorCategoriesRow> {
  @override
  String get tableName => 'vendor_categories';

  @override
  VendorCategoriesRow createRow(Map<String, dynamic> data) =>
      VendorCategoriesRow(data);
}

class VendorCategoriesRow extends SupabaseDataRow {
  VendorCategoriesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VendorCategoriesTable();

  String get categoryId => getField<String>('category_id')!;
  set categoryId(String value) => setField<String>('category_id', value);

  String get categoryName => getField<String>('category_name')!;
  set categoryName(String value) => setField<String>('category_name', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  bool get active => getField<bool>('active')!;
  set active(bool value) => setField<bool>('active', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  DateTime get updatedAt => getField<DateTime>('updated_at')!;
  set updatedAt(DateTime value) => setField<DateTime>('updated_at', value);
}
