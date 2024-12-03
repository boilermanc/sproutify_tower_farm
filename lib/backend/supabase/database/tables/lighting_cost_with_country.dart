import '../database.dart';

class LightingCostWithCountryTable
    extends SupabaseTable<LightingCostWithCountryRow> {
  @override
  String get tableName => 'lighting_cost_with_country';

  @override
  LightingCostWithCountryRow createRow(Map<String, dynamic> data) =>
      LightingCostWithCountryRow(data);
}

class LightingCostWithCountryRow extends SupabaseDataRow {
  LightingCostWithCountryRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => LightingCostWithCountryTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);

  int? get farmCurrencySettingId => getField<int>('farm_currency_setting_id');
  set farmCurrencySettingId(int? value) =>
      setField<int>('farm_currency_setting_id', value);

  String? get billingUnit => getField<String>('billing_unit');
  set billingUnit(String? value) => setField<String>('billing_unit', value);

  DateTime? get effectiveDate => getField<DateTime>('effective_date');
  set effectiveDate(DateTime? value) =>
      setField<DateTime>('effective_date', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  double? get baseCharge => getField<double>('base_charge');
  set baseCharge(double? value) => setField<double>('base_charge', value);

  double? get wholesalePowerAdj => getField<double>('wholesale_power_adj');
  set wholesalePowerAdj(double? value) =>
      setField<double>('wholesale_power_adj', value);

  double? get franchiseFee => getField<double>('franchise_fee');
  set franchiseFee(double? value) => setField<double>('franchise_fee', value);

  double? get taxRate => getField<double>('tax_rate');
  set taxRate(double? value) => setField<double>('tax_rate', value);

  String? get country => getField<String>('country');
  set country(String? value) => setField<String>('country', value);
}
