import '../database.dart';

class VolumeConversionFactorsTable
    extends SupabaseTable<VolumeConversionFactorsRow> {
  @override
  String get tableName => 'volume_conversion_factors';

  @override
  VolumeConversionFactorsRow createRow(Map<String, dynamic> data) =>
      VolumeConversionFactorsRow(data);
}

class VolumeConversionFactorsRow extends SupabaseDataRow {
  VolumeConversionFactorsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VolumeConversionFactorsTable();

  String? get unitSymbol => getField<String>('unit_symbol');
  set unitSymbol(String? value) => setField<String>('unit_symbol', value);

  double? get perGallonFactor => getField<double>('per_gallon_factor');
  set perGallonFactor(double? value) =>
      setField<double>('per_gallon_factor', value);

  double? get perQuartFactor => getField<double>('per_quart_factor');
  set perQuartFactor(double? value) =>
      setField<double>('per_quart_factor', value);

  double? get perLiterFactor => getField<double>('per_liter_factor');
  set perLiterFactor(double? value) =>
      setField<double>('per_liter_factor', value);
}
