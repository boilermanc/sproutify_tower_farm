import '../database.dart';

class FarmChemicalsTable extends SupabaseTable<FarmChemicalsRow> {
  @override
  String get tableName => 'farm_chemicals';

  @override
  FarmChemicalsRow createRow(Map<String, dynamic> data) =>
      FarmChemicalsRow(data);
}

class FarmChemicalsRow extends SupabaseDataRow {
  FarmChemicalsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => FarmChemicalsTable();

  String? get productId => getField<String>('product_id');
  set productId(String? value) => setField<String>('product_id', value);

  String? get productName => getField<String>('product_name');
  set productName(String? value) => setField<String>('product_name', value);

  String? get categoryName => getField<String>('category_name');
  set categoryName(String? value) => setField<String>('category_name', value);

  String? get productTypeName => getField<String>('product_type_name');
  set productTypeName(String? value) =>
      setField<String>('product_type_name', value);

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);

  bool? get active => getField<bool>('active');
  set active(bool? value) => setField<bool>('active', value);

  double? get costPerUnit => getField<double>('cost_per_unit');
  set costPerUnit(double? value) => setField<double>('cost_per_unit', value);

  String? get unit => getField<String>('unit');
  set unit(String? value) => setField<String>('unit', value);

  String? get imageUrl => getField<String>('image_url');
  set imageUrl(String? value) => setField<String>('image_url', value);

  double? get initialQuantity => getField<double>('initial_quantity');
  set initialQuantity(double? value) =>
      setField<double>('initial_quantity', value);

  double? get minimumQuantity => getField<double>('minimum_quantity');
  set minimumQuantity(double? value) =>
      setField<double>('minimum_quantity', value);

  double? get quantityOnHand => getField<double>('quantity_on_hand');
  set quantityOnHand(double? value) =>
      setField<double>('quantity_on_hand', value);

  String? get stockStatus => getField<String>('stock_status');
  set stockStatus(String? value) => setField<String>('stock_status', value);

  String? get stockStatusColor => getField<String>('stock_status_color');
  set stockStatusColor(String? value) =>
      setField<String>('stock_status_color', value);

  DateTime? get inventoryLastUpdated =>
      getField<DateTime>('inventory_last_updated');
  set inventoryLastUpdated(DateTime? value) =>
      setField<DateTime>('inventory_last_updated', value);

  String? get vendorId => getField<String>('vendor_id');
  set vendorId(String? value) => setField<String>('vendor_id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  String? get createdByUserId => getField<String>('created_by_user_id');
  set createdByUserId(String? value) =>
      setField<String>('created_by_user_id', value);

  String? get productChemicalId => getField<String>('product_chemical_id');
  set productChemicalId(String? value) =>
      setField<String>('product_chemical_id', value);

  String? get sdsId => getField<String>('sds_id');
  set sdsId(String? value) => setField<String>('sds_id', value);

  String? get msdsUrl => getField<String>('msds_url');
  set msdsUrl(String? value) => setField<String>('msds_url', value);

  String? get reEntryInterval => getField<String>('re_entry_interval');
  set reEntryInterval(String? value) =>
      setField<String>('re_entry_interval', value);

  String? get preHarvestInterval => getField<String>('pre_harvest_interval');
  set preHarvestInterval(String? value) =>
      setField<String>('pre_harvest_interval', value);

  List<String> get activeIngredients =>
      getListField<String>('active_ingredients');
  set activeIngredients(List<String>? value) =>
      setListField<String>('active_ingredients', value);

  String? get notes => getField<String>('notes');
  set notes(String? value) => setField<String>('notes', value);

  String? get sdsProductName => getField<String>('sds_product_name');
  set sdsProductName(String? value) =>
      setField<String>('sds_product_name', value);

  String? get sdsPath => getField<String>('sds_path');
  set sdsPath(String? value) => setField<String>('sds_path', value);

  bool? get omriRated => getField<bool>('omri_rated');
  set omriRated(bool? value) => setField<bool>('omri_rated', value);

  String? get labelPath => getField<String>('label_path');
  set labelPath(String? value) => setField<String>('label_path', value);

  double? get baseAmount => getField<double>('base_amount');
  set baseAmount(double? value) => setField<double>('base_amount', value);

  double? get perVolume => getField<double>('per_volume');
  set perVolume(double? value) => setField<double>('per_volume', value);

  String? get dosingNotes => getField<String>('dosing_notes');
  set dosingNotes(String? value) => setField<String>('dosing_notes', value);

  double? get standardDoseGallon => getField<double>('standard_dose_gallon');
  set standardDoseGallon(double? value) =>
      setField<double>('standard_dose_gallon', value);

  String? get standardDoseGallonUnitId =>
      getField<String>('standard_dose_gallon_unit_id');
  set standardDoseGallonUnitId(String? value) =>
      setField<String>('standard_dose_gallon_unit_id', value);

  double? get minimumDilution => getField<double>('minimum_dilution');
  set minimumDilution(double? value) =>
      setField<double>('minimum_dilution', value);

  double? get maximumDilution => getField<double>('maximum_dilution');
  set maximumDilution(double? value) =>
      setField<double>('maximum_dilution', value);

  String? get applicationMethods => getField<String>('application_methods');
  set applicationMethods(String? value) =>
      setField<String>('application_methods', value);
}
