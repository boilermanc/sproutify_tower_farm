import '../database.dart';

class ProductTypeUnitsTable extends SupabaseTable<ProductTypeUnitsRow> {
  @override
  String get tableName => 'product_type_units';

  @override
  ProductTypeUnitsRow createRow(Map<String, dynamic> data) =>
      ProductTypeUnitsRow(data);
}

class ProductTypeUnitsRow extends SupabaseDataRow {
  ProductTypeUnitsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ProductTypeUnitsTable();

  String get typeUnitId => getField<String>('type_unit_id')!;
  set typeUnitId(String value) => setField<String>('type_unit_id', value);

  String get productTypeId => getField<String>('product_type_id')!;
  set productTypeId(String value) => setField<String>('product_type_id', value);

  String get unitId => getField<String>('unit_id')!;
  set unitId(String value) => setField<String>('unit_id', value);

  bool get isDefault => getField<bool>('is_default')!;
  set isDefault(bool value) => setField<bool>('is_default', value);

  bool get active => getField<bool>('active')!;
  set active(bool value) => setField<bool>('active', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  DateTime get updatedAt => getField<DateTime>('updated_at')!;
  set updatedAt(DateTime value) => setField<DateTime>('updated_at', value);

  String get createdByUserId => getField<String>('created_by_user_id')!;
  set createdByUserId(String value) =>
      setField<String>('created_by_user_id', value);
}
