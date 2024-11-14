import '../database.dart';

class CalculatedDosingRatesTable
    extends SupabaseTable<CalculatedDosingRatesRow> {
  @override
  String get tableName => 'calculated_dosing_rates';

  @override
  CalculatedDosingRatesRow createRow(Map<String, dynamic> data) =>
      CalculatedDosingRatesRow(data);
}

class CalculatedDosingRatesRow extends SupabaseDataRow {
  CalculatedDosingRatesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CalculatedDosingRatesTable();

  String get calcDosingId => getField<String>('calc_dosing_id')!;
  set calcDosingId(String value) => setField<String>('calc_dosing_id', value);

  String get dosingId => getField<String>('dosing_id')!;
  set dosingId(String value) => setField<String>('dosing_id', value);

  double get convertedAmount => getField<double>('converted_amount')!;
  set convertedAmount(double value) =>
      setField<double>('converted_amount', value);

  String get convertedUnit => getField<String>('converted_unit')!;
  set convertedUnit(String value) => setField<String>('converted_unit', value);
}
