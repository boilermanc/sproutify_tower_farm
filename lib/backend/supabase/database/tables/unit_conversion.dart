import '../database.dart';

class UnitConversionTable extends SupabaseTable<UnitConversionRow> {
  @override
  String get tableName => 'unit_conversion';

  @override
  UnitConversionRow createRow(Map<String, dynamic> data) =>
      UnitConversionRow(data);
}

class UnitConversionRow extends SupabaseDataRow {
  UnitConversionRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UnitConversionTable();

  String get conversionId => getField<String>('conversion_id')!;
  set conversionId(String value) => setField<String>('conversion_id', value);

  String get baseUnit => getField<String>('base_unit')!;
  set baseUnit(String value) => setField<String>('base_unit', value);

  String get targetUnit => getField<String>('target_unit')!;
  set targetUnit(String value) => setField<String>('target_unit', value);

  double get conversionFactor => getField<double>('conversion_factor')!;
  set conversionFactor(double value) =>
      setField<double>('conversion_factor', value);
}
