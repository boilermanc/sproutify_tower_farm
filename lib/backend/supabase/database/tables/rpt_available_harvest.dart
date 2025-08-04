import '../database.dart';

class RptAvailableHarvestTable extends SupabaseTable<RptAvailableHarvestRow> {
  @override
  String get tableName => 'rpt_available_harvest';

  @override
  RptAvailableHarvestRow createRow(Map<String, dynamic> data) =>
      RptAvailableHarvestRow(data);
}

class RptAvailableHarvestRow extends SupabaseDataRow {
  RptAvailableHarvestRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => RptAvailableHarvestTable();

  int? get inventoryId => getField<int>('inventory_id');
  set inventoryId(int? value) => setField<int>('inventory_id', value);

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);

  String? get plantName => getField<String>('plant_name');
  set plantName(String? value) => setField<String>('plant_name', value);

  int? get availableQuantity => getField<int>('available_quantity');
  set availableQuantity(int? value) =>
      setField<int>('available_quantity', value);

  DateTime? get harvestDate => getField<DateTime>('harvest_date');
  set harvestDate(DateTime? value) => setField<DateTime>('harvest_date', value);

  int? get daysSinceHarvest => getField<int>('days_since_harvest');
  set daysSinceHarvest(int? value) =>
      setField<int>('days_since_harvest', value);

  int? get originalQuantity => getField<int>('original_quantity');
  set originalQuantity(int? value) => setField<int>('original_quantity', value);

  int? get alreadyAllocated => getField<int>('already_allocated');
  set alreadyAllocated(int? value) => setField<int>('already_allocated', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  String? get freshnessLevel => getField<String>('freshness_level');
  set freshnessLevel(String? value) =>
      setField<String>('freshness_level', value);
}
