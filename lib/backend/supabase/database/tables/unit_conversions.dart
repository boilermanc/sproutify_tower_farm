import '../database.dart';

class UnitConversionsTable extends SupabaseTable<UnitConversionsRow> {
  @override
  String get tableName => 'unit_conversions';

  @override
  UnitConversionsRow createRow(Map<String, dynamic> data) =>
      UnitConversionsRow(data);
}

class UnitConversionsRow extends SupabaseDataRow {
  UnitConversionsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UnitConversionsTable();

  String get conversionId => getField<String>('conversion_id')!;
  set conversionId(String value) => setField<String>('conversion_id', value);

  String get fromUnit => getField<String>('from_unit')!;
  set fromUnit(String value) => setField<String>('from_unit', value);

  String get toUnit => getField<String>('to_unit')!;
  set toUnit(String value) => setField<String>('to_unit', value);

  double get conversionFactor => getField<double>('conversion_factor')!;
  set conversionFactor(double value) =>
      setField<double>('conversion_factor', value);
}
