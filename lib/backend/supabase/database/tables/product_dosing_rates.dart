import '../database.dart';

class ProductDosingRatesTable extends SupabaseTable<ProductDosingRatesRow> {
  @override
  String get tableName => 'product_dosing_rates';

  @override
  ProductDosingRatesRow createRow(Map<String, dynamic> data) =>
      ProductDosingRatesRow(data);
}

class ProductDosingRatesRow extends SupabaseDataRow {
  ProductDosingRatesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ProductDosingRatesTable();

  String get dosingId => getField<String>('dosing_id')!;
  set dosingId(String value) => setField<String>('dosing_id', value);

  String? get productSdsId => getField<String>('product_sds_id');
  set productSdsId(String? value) => setField<String>('product_sds_id', value);

  double get baseAmount => getField<double>('base_amount')!;
  set baseAmount(double value) => setField<double>('base_amount', value);

  String get baseAmountUnitId => getField<String>('base_amount_unit_id')!;
  set baseAmountUnitId(String value) =>
      setField<String>('base_amount_unit_id', value);

  double get perVolume => getField<double>('per_volume')!;
  set perVolume(double value) => setField<double>('per_volume', value);

  String get perVolumeUnitId => getField<String>('per_volume_unit_id')!;
  set perVolumeUnitId(String value) =>
      setField<String>('per_volume_unit_id', value);

  double? get minimumDilution => getField<double>('minimum_dilution');
  set minimumDilution(double? value) =>
      setField<double>('minimum_dilution', value);

  double? get maximumDilution => getField<double>('maximum_dilution');
  set maximumDilution(double? value) =>
      setField<double>('maximum_dilution', value);

  String? get applicationMethodId => getField<String>('application_method_id');
  set applicationMethodId(String? value) =>
      setField<String>('application_method_id', value);

  String? get cropStage => getField<String>('crop_stage');
  set cropStage(String? value) => setField<String>('crop_stage', value);

  String? get notes => getField<String>('notes');
  set notes(String? value) => setField<String>('notes', value);

  double? get standardizedAmountGallon =>
      getField<double>('standardized_amount_gallon');
  set standardizedAmountGallon(double? value) =>
      setField<double>('standardized_amount_gallon', value);

  double? get standardizedAmountLiter =>
      getField<double>('standardized_amount_liter');
  set standardizedAmountLiter(double? value) =>
      setField<double>('standardized_amount_liter', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  DateTime get updatedAt => getField<DateTime>('updated_at')!;
  set updatedAt(DateTime value) => setField<DateTime>('updated_at', value);

  double? get standardizedAmountTeaspoon =>
      getField<double>('standardized_amount_teaspoon');
  set standardizedAmountTeaspoon(double? value) =>
      setField<double>('standardized_amount_teaspoon', value);

  double? get standardizedAmountTablespoon =>
      getField<double>('standardized_amount_tablespoon');
  set standardizedAmountTablespoon(double? value) =>
      setField<double>('standardized_amount_tablespoon', value);

  double? get standardDoseGallon => getField<double>('standard_dose_gallon');
  set standardDoseGallon(double? value) =>
      setField<double>('standard_dose_gallon', value);

  double? get standardDoseQuart => getField<double>('standard_dose_quart');
  set standardDoseQuart(double? value) =>
      setField<double>('standard_dose_quart', value);

  double? get standardDoseLiter => getField<double>('standard_dose_liter');
  set standardDoseLiter(double? value) =>
      setField<double>('standard_dose_liter', value);

  String? get standardDoseGallonUnitId =>
      getField<String>('standard_dose_gallon_unit_id');
  set standardDoseGallonUnitId(String? value) =>
      setField<String>('standard_dose_gallon_unit_id', value);

  String? get standardDoseQuartUnitId =>
      getField<String>('standard_dose_quart_unit_id');
  set standardDoseQuartUnitId(String? value) =>
      setField<String>('standard_dose_quart_unit_id', value);

  String? get standardDoseLiterUnitId =>
      getField<String>('standard_dose_liter_unit_id');
  set standardDoseLiterUnitId(String? value) =>
      setField<String>('standard_dose_liter_unit_id', value);

  double? get standardDoseGallonOunces =>
      getField<double>('standard_dose_gallon_ounces');
  set standardDoseGallonOunces(double? value) =>
      setField<double>('standard_dose_gallon_ounces', value);

  double? get standardDoseQuartOunces =>
      getField<double>('standard_dose_quart_ounces');
  set standardDoseQuartOunces(double? value) =>
      setField<double>('standard_dose_quart_ounces', value);

  double? get standardDoseLiterOunces =>
      getField<double>('standard_dose_liter_ounces');
  set standardDoseLiterOunces(double? value) =>
      setField<double>('standard_dose_liter_ounces', value);

  String? get standardDoseGallonOuncesUnitId =>
      getField<String>('standard_dose_gallon_ounces_unit_id');
  set standardDoseGallonOuncesUnitId(String? value) =>
      setField<String>('standard_dose_gallon_ounces_unit_id', value);

  String? get standardDoseQuartOuncesUnitId =>
      getField<String>('standard_dose_quart_ounces_unit_id');
  set standardDoseQuartOuncesUnitId(String? value) =>
      setField<String>('standard_dose_quart_ounces_unit_id', value);

  String? get standardDoseLiterOuncesUnitId =>
      getField<String>('standard_dose_liter_ounces_unit_id');
  set standardDoseLiterOuncesUnitId(String? value) =>
      setField<String>('standard_dose_liter_ounces_unit_id', value);

  String? get extractedDataId => getField<String>('extracted_data_id');
  set extractedDataId(String? value) =>
      setField<String>('extracted_data_id', value);
}
