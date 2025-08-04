import '../database.dart';

class InventoryStatusOverviewTable
    extends SupabaseTable<InventoryStatusOverviewRow> {
  @override
  String get tableName => 'inventory_status_overview';

  @override
  InventoryStatusOverviewRow createRow(Map<String, dynamic> data) =>
      InventoryStatusOverviewRow(data);
}

class InventoryStatusOverviewRow extends SupabaseDataRow {
  InventoryStatusOverviewRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => InventoryStatusOverviewTable();

  int? get inventoryId => getField<int>('inventory_id');
  set inventoryId(int? value) => setField<int>('inventory_id', value);

  DateTime? get harvestDate => getField<DateTime>('harvest_date');
  set harvestDate(DateTime? value) => setField<DateTime>('harvest_date', value);

  String? get plantName => getField<String>('plant_name');
  set plantName(String? value) => setField<String>('plant_name', value);

  int? get originalQuantity => getField<int>('original_quantity');
  set originalQuantity(int? value) => setField<int>('original_quantity', value);

  int? get currentQuantity => getField<int>('current_quantity');
  set currentQuantity(int? value) => setField<int>('current_quantity', value);

  int? get wasteQuantity => getField<int>('waste_quantity');
  set wasteQuantity(int? value) => setField<int>('waste_quantity', value);

  int? get donatedQuantity => getField<int>('donated_quantity');
  set donatedQuantity(int? value) => setField<int>('donated_quantity', value);

  int? get deliveredQuantity => getField<int>('delivered_quantity');
  set deliveredQuantity(int? value) =>
      setField<int>('delivered_quantity', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);

  int? get daysOld => getField<int>('days_old');
  set daysOld(int? value) => setField<int>('days_old', value);

  double? get utilizationPercent => getField<double>('utilization_percent');
  set utilizationPercent(double? value) =>
      setField<double>('utilization_percent', value);
}
