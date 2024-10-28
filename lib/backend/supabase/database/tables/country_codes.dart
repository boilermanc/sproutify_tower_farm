import '../database.dart';

class CountryCodesTable extends SupabaseTable<CountryCodesRow> {
  @override
  String get tableName => 'country_codes';

  @override
  CountryCodesRow createRow(Map<String, dynamic> data) => CountryCodesRow(data);
}

class CountryCodesRow extends SupabaseDataRow {
  CountryCodesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CountryCodesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get countryName => getField<String>('country_name')!;
  set countryName(String value) => setField<String>('country_name', value);

  String get isoCode => getField<String>('iso_code')!;
  set isoCode(String value) => setField<String>('iso_code', value);

  String get phoneCode => getField<String>('phone_code')!;
  set phoneCode(String value) => setField<String>('phone_code', value);
}
