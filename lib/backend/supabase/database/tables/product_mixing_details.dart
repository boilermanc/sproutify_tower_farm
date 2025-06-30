import '../database.dart';

class ProductMixingDetailsTable extends SupabaseTable<ProductMixingDetailsRow> {
  @override
  String get tableName => 'product_mixing_details';

  @override
  ProductMixingDetailsRow createRow(Map<String, dynamic> data) =>
      ProductMixingDetailsRow(data);
}

class ProductMixingDetailsRow extends SupabaseDataRow {
  ProductMixingDetailsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ProductMixingDetailsTable();

  String? get productItemId => getField<String>('product_item_id');
  set productItemId(String? value) =>
      setField<String>('product_item_id', value);

  String? get productName => getField<String>('product_name');
  set productName(String? value) => setField<String>('product_name', value);

  double? get ratePerGallon => getField<double>('rate_per_gallon');
  set ratePerGallon(double? value) =>
      setField<double>('rate_per_gallon', value);

  String? get rateUnitGallon => getField<String>('rate_unit_gallon');
  set rateUnitGallon(String? value) =>
      setField<String>('rate_unit_gallon', value);

  double? get ratePerQuart => getField<double>('rate_per_quart');
  set ratePerQuart(double? value) => setField<double>('rate_per_quart', value);

  String? get rateUnitQuart => getField<String>('rate_unit_quart');
  set rateUnitQuart(String? value) =>
      setField<String>('rate_unit_quart', value);

  double? get ratePerLiter => getField<double>('rate_per_liter');
  set ratePerLiter(double? value) => setField<double>('rate_per_liter', value);

  String? get rateUnitLiter => getField<String>('rate_unit_liter');
  set rateUnitLiter(String? value) =>
      setField<String>('rate_unit_liter', value);

  int? get reEntryInterval => getField<int>('re_entry_interval');
  set reEntryInterval(int? value) => setField<int>('re_entry_interval', value);

  String? get reEntryIntervalUnit => getField<String>('re_entry_interval_unit');
  set reEntryIntervalUnit(String? value) =>
      setField<String>('re_entry_interval_unit', value);

  int? get preHarvestInterval => getField<int>('pre_harvest_interval');
  set preHarvestInterval(int? value) =>
      setField<int>('pre_harvest_interval', value);

  String? get preHarvestIntervalUnit =>
      getField<String>('pre_harvest_interval_unit');
  set preHarvestIntervalUnit(String? value) =>
      setField<String>('pre_harvest_interval_unit', value);

  String? get notes => getField<String>('notes');
  set notes(String? value) => setField<String>('notes', value);
}
