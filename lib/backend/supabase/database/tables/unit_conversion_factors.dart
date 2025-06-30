import '../database.dart';

class UnitConversionFactorsTable
    extends SupabaseTable<UnitConversionFactorsRow> {
  @override
  String get tableName => 'unit_conversion_factors';

  @override
  UnitConversionFactorsRow createRow(Map<String, dynamic> data) =>
      UnitConversionFactorsRow(data);
}

class UnitConversionFactorsRow extends SupabaseDataRow {
  UnitConversionFactorsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UnitConversionFactorsTable();

  String get unitText => getField<String>('unit_text')!;
  set unitText(String value) => setField<String>('unit_text', value);

  double get perGallonFactor => getField<double>('per_gallon_factor')!;
  set perGallonFactor(double value) =>
      setField<double>('per_gallon_factor', value);

  double get perQuartFactor => getField<double>('per_quart_factor')!;
  set perQuartFactor(double value) =>
      setField<double>('per_quart_factor', value);

  double get perLiterFactor => getField<double>('per_liter_factor')!;
  set perLiterFactor(double value) =>
      setField<double>('per_liter_factor', value);
}
