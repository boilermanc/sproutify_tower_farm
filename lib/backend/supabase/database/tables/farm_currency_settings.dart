import '../database.dart';

class FarmCurrencySettingsTable extends SupabaseTable<FarmCurrencySettingsRow> {
  @override
  String get tableName => 'farm_currency_settings';

  @override
  FarmCurrencySettingsRow createRow(Map<String, dynamic> data) =>
      FarmCurrencySettingsRow(data);
}

class FarmCurrencySettingsRow extends SupabaseDataRow {
  FarmCurrencySettingsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => FarmCurrencySettingsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get farmId => getField<String>('farm_id')!;
  set farmId(String value) => setField<String>('farm_id', value);

  String get currencyCode => getField<String>('currency_code')!;
  set currencyCode(String value) => setField<String>('currency_code', value);

  DateTime get effectiveDate => getField<DateTime>('effective_date')!;
  set effectiveDate(DateTime value) =>
      setField<DateTime>('effective_date', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
