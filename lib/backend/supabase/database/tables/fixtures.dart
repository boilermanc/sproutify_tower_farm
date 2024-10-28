import '../database.dart';

class FixturesTable extends SupabaseTable<FixturesRow> {
  @override
  String get tableName => 'fixtures';

  @override
  FixturesRow createRow(Map<String, dynamic> data) => FixturesRow(data);
}

class FixturesRow extends SupabaseDataRow {
  FixturesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => FixturesTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get vendorId => getField<String>('vendor_id')!;
  set vendorId(String value) => setField<String>('vendor_id', value);

  double? get maxPowerKw => getField<double>('max_power_kw');
  set maxPowerKw(double? value) => setField<double>('max_power_kw', value);

  double? get currentA => getField<double>('current_a');
  set currentA(double? value) => setField<double>('current_a', value);

  double? get energyPerMonthKwh => getField<double>('energy_per_month_kwh');
  set energyPerMonthKwh(double? value) =>
      setField<double>('energy_per_month_kwh', value);

  double? get energyPerYearKwh => getField<double>('energy_per_year_kwh');
  set energyPerYearKwh(double? value) =>
      setField<double>('energy_per_year_kwh', value);

  double? get btu => getField<double>('btu');
  set btu(double? value) => setField<double>('btu', value);

  double? get acTons => getField<double>('ac_tons');
  set acTons(double? value) => setField<double>('ac_tons', value);

  String get fixtureName => getField<String>('fixture_name')!;
  set fixtureName(String value) => setField<String>('fixture_name', value);

  String get fixtureModel => getField<String>('fixture_model')!;
  set fixtureModel(String value) => setField<String>('fixture_model', value);

  String get fixtureTypeId => getField<String>('fixture_type_id')!;
  set fixtureTypeId(String value) => setField<String>('fixture_type_id', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);

  int get lookupId => getField<int>('lookup_id')!;
  set lookupId(int value) => setField<int>('lookup_id', value);

  bool get active => getField<bool>('active')!;
  set active(bool value) => setField<bool>('active', value);
}
