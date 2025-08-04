import '../database.dart';

class ExpiringInventoryViewTable
    extends SupabaseTable<ExpiringInventoryViewRow> {
  @override
  String get tableName => 'expiring_inventory_view';

  @override
  ExpiringInventoryViewRow createRow(Map<String, dynamic> data) =>
      ExpiringInventoryViewRow(data);
}

class ExpiringInventoryViewRow extends SupabaseDataRow {
  ExpiringInventoryViewRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ExpiringInventoryViewTable();

  int? get inventoryId => getField<int>('inventory_id');
  set inventoryId(int? value) => setField<int>('inventory_id', value);

  DateTime? get harvestDate => getField<DateTime>('harvest_date');
  set harvestDate(DateTime? value) => setField<DateTime>('harvest_date', value);

  String? get plantName => getField<String>('plant_name');
  set plantName(String? value) => setField<String>('plant_name', value);

  int? get qtyAtRisk => getField<int>('qty_at_risk');
  set qtyAtRisk(int? value) => setField<int>('qty_at_risk', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  int? get daysOld => getField<int>('days_old');
  set daysOld(int? value) => setField<int>('days_old', value);

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);
}
