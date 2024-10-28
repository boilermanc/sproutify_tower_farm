import '../database.dart';

class LightingFixtureSummaryWithVendorTable
    extends SupabaseTable<LightingFixtureSummaryWithVendorRow> {
  @override
  String get tableName => 'lighting_fixture_summary_with_vendor';

  @override
  LightingFixtureSummaryWithVendorRow createRow(Map<String, dynamic> data) =>
      LightingFixtureSummaryWithVendorRow(data);
}

class LightingFixtureSummaryWithVendorRow extends SupabaseDataRow {
  LightingFixtureSummaryWithVendorRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => LightingFixtureSummaryWithVendorTable();

  String? get allocationId => getField<String>('allocation_id');
  set allocationId(String? value) => setField<String>('allocation_id', value);

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);

  String? get farmName => getField<String>('farm_name');
  set farmName(String? value) => setField<String>('farm_name', value);

  String? get fixtureTypeId => getField<String>('fixture_type_id');
  set fixtureTypeId(String? value) =>
      setField<String>('fixture_type_id', value);

  int? get lookupId => getField<int>('lookup_id');
  set lookupId(int? value) => setField<int>('lookup_id', value);

  String? get fixtureName => getField<String>('fixture_name');
  set fixtureName(String? value) => setField<String>('fixture_name', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  double? get maxPowerKw => getField<double>('max_power_kw');
  set maxPowerKw(double? value) => setField<double>('max_power_kw', value);

  double? get currentA => getField<double>('current_a');
  set currentA(double? value) => setField<double>('current_a', value);

  bool? get fixtureActive => getField<bool>('fixture_active');
  set fixtureActive(bool? value) => setField<bool>('fixture_active', value);

  String? get vendorName => getField<String>('vendor_name');
  set vendorName(String? value) => setField<String>('vendor_name', value);

  bool? get vendorActive => getField<bool>('vendor_active');
  set vendorActive(bool? value) => setField<bool>('vendor_active', value);

  String? get zoneId => getField<String>('zone_id');
  set zoneId(String? value) => setField<String>('zone_id', value);

  int? get allocatedQuantity => getField<int>('allocated_quantity');
  set allocatedQuantity(int? value) =>
      setField<int>('allocated_quantity', value);

  int? get totalQuantity => getField<int>('total_quantity');
  set totalQuantity(int? value) => setField<int>('total_quantity', value);

  int? get availableQuantity => getField<int>('available_quantity');
  set availableQuantity(int? value) =>
      setField<int>('available_quantity', value);
}
