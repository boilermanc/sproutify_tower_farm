import '../database.dart';

class UnitsMasterTable extends SupabaseTable<UnitsMasterRow> {
  @override
  String get tableName => 'units_master';

  @override
  UnitsMasterRow createRow(Map<String, dynamic> data) => UnitsMasterRow(data);
}

class UnitsMasterRow extends SupabaseDataRow {
  UnitsMasterRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UnitsMasterTable();

  String get symbol => getField<String>('symbol')!;
  set symbol(String value) => setField<String>('symbol', value);

  String get displayName => getField<String>('display_name')!;
  set displayName(String value) => setField<String>('display_name', value);

  double get conversionToBaseUnit =>
      getField<double>('conversion_to_base_unit')!;
  set conversionToBaseUnit(double value) =>
      setField<double>('conversion_to_base_unit', value);

  String get baseUnit => getField<String>('base_unit')!;
  set baseUnit(String value) => setField<String>('base_unit', value);

  String get unitCategory => getField<String>('unit_category')!;
  set unitCategory(String value) => setField<String>('unit_category', value);
}
