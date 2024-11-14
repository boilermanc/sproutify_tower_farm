import '../database.dart';

class ProductUnitsTable extends SupabaseTable<ProductUnitsRow> {
  @override
  String get tableName => 'product_units';

  @override
  ProductUnitsRow createRow(Map<String, dynamic> data) => ProductUnitsRow(data);
}

class ProductUnitsRow extends SupabaseDataRow {
  ProductUnitsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ProductUnitsTable();

  String get unitId => getField<String>('unit_id')!;
  set unitId(String value) => setField<String>('unit_id', value);

  String get unitName => getField<String>('unit_name')!;
  set unitName(String value) => setField<String>('unit_name', value);

  String get unitSymbol => getField<String>('unit_symbol')!;
  set unitSymbol(String value) => setField<String>('unit_symbol', value);

  String get measurementType => getField<String>('measurement_type')!;
  set measurementType(String value) =>
      setField<String>('measurement_type', value);

  String get system => getField<String>('system')!;
  set system(String value) => setField<String>('system', value);

  bool get baseUnit => getField<bool>('base_unit')!;
  set baseUnit(bool value) => setField<bool>('base_unit', value);

  double? get conversionFactor => getField<double>('conversion_factor');
  set conversionFactor(double? value) =>
      setField<double>('conversion_factor', value);

  String? get baseUnitId => getField<String>('base_unit_id');
  set baseUnitId(String? value) => setField<String>('base_unit_id', value);

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
