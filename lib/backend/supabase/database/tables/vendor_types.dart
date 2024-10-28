import '../database.dart';

class VendorTypesTable extends SupabaseTable<VendorTypesRow> {
  @override
  String get tableName => 'vendor_types';

  @override
  VendorTypesRow createRow(Map<String, dynamic> data) => VendorTypesRow(data);
}

class VendorTypesRow extends SupabaseDataRow {
  VendorTypesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VendorTypesTable();

  String get typeId => getField<String>('type_id')!;
  set typeId(String value) => setField<String>('type_id', value);

  String get typeName => getField<String>('type_name')!;
  set typeName(String value) => setField<String>('type_name', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  String? get categoryId => getField<String>('category_id');
  set categoryId(String? value) => setField<String>('category_id', value);
}
