import '../database.dart';

class RptInventoryAgingTable extends SupabaseTable<RptInventoryAgingRow> {
  @override
  String get tableName => 'rpt_inventory_aging';

  @override
  RptInventoryAgingRow createRow(Map<String, dynamic> data) =>
      RptInventoryAgingRow(data);
}

class RptInventoryAgingRow extends SupabaseDataRow {
  RptInventoryAgingRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => RptInventoryAgingTable();

  int? get inventoryId => getField<int>('inventory_id');
  set inventoryId(int? value) => setField<int>('inventory_id', value);

  String? get plantName => getField<String>('plant_name');
  set plantName(String? value) => setField<String>('plant_name', value);

  int? get availableQuantity => getField<int>('available_quantity');
  set availableQuantity(int? value) =>
      setField<int>('available_quantity', value);

  DateTime? get harvestDate => getField<DateTime>('harvest_date');
  set harvestDate(DateTime? value) => setField<DateTime>('harvest_date', value);

  int? get daysOld => getField<int>('days_old');
  set daysOld(int? value) => setField<int>('days_old', value);

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);

  String? get ageCategory => getField<String>('age_category');
  set ageCategory(String? value) => setField<String>('age_category', value);

  String? get wasteRiskLevel => getField<String>('waste_risk_level');
  set wasteRiskLevel(String? value) =>
      setField<String>('waste_risk_level', value);

  String? get ageColor => getField<String>('age_color');
  set ageColor(String? value) => setField<String>('age_color', value);

  String? get riskColor => getField<String>('risk_color');
  set riskColor(String? value) => setField<String>('risk_color', value);

  String? get ageText => getField<String>('age_text');
  set ageText(String? value) => setField<String>('age_text', value);
}
