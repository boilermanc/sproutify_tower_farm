import '../database.dart';

class ProductTypeUnitViewTable extends SupabaseTable<ProductTypeUnitViewRow> {
  @override
  String get tableName => 'product_type_unit_view';

  @override
  ProductTypeUnitViewRow createRow(Map<String, dynamic> data) =>
      ProductTypeUnitViewRow(data);
}

class ProductTypeUnitViewRow extends SupabaseDataRow {
  ProductTypeUnitViewRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ProductTypeUnitViewTable();

  String? get typeUnitId => getField<String>('type_unit_id');
  set typeUnitId(String? value) => setField<String>('type_unit_id', value);

  String? get productTypeId => getField<String>('product_type_id');
  set productTypeId(String? value) =>
      setField<String>('product_type_id', value);

  String? get unitId => getField<String>('unit_id');
  set unitId(String? value) => setField<String>('unit_id', value);

  bool? get isDefault => getField<bool>('is_default');
  set isDefault(bool? value) => setField<bool>('is_default', value);

  bool? get active => getField<bool>('active');
  set active(bool? value) => setField<bool>('active', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  String? get createdByUserId => getField<String>('created_by_user_id');
  set createdByUserId(String? value) =>
      setField<String>('created_by_user_id', value);

  String? get unitName => getField<String>('unit_name');
  set unitName(String? value) => setField<String>('unit_name', value);

  String? get unitSymbol => getField<String>('unit_symbol');
  set unitSymbol(String? value) => setField<String>('unit_symbol', value);

  String? get measurementType => getField<String>('measurement_type');
  set measurementType(String? value) =>
      setField<String>('measurement_type', value);

  String? get system => getField<String>('system');
  set system(String? value) => setField<String>('system', value);
}
