import '../database.dart';

class HarvestSummaryViewTable extends SupabaseTable<HarvestSummaryViewRow> {
  @override
  String get tableName => 'harvest_summary_view';

  @override
  HarvestSummaryViewRow createRow(Map<String, dynamic> data) =>
      HarvestSummaryViewRow(data);
}

class HarvestSummaryViewRow extends SupabaseDataRow {
  HarvestSummaryViewRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => HarvestSummaryViewTable();

  int? get itemId => getField<int>('item_id');
  set itemId(int? value) => setField<int>('item_id', value);

  int? get harvestListId => getField<int>('harvest_list_id');
  set harvestListId(int? value) => setField<int>('harvest_list_id', value);

  int? get plantId => getField<int>('plant_id');
  set plantId(int? value) => setField<int>('plant_id', value);

  String? get plantName => getField<String>('plant_name');
  set plantName(String? value) => setField<String>('plant_name', value);

  int? get towerId => getField<int>('tower_id');
  set towerId(int? value) => setField<int>('tower_id', value);

  String? get towerIdentifier => getField<String>('tower_identifier');
  set towerIdentifier(String? value) =>
      setField<String>('tower_identifier', value);

  int? get expectedHarvest => getField<int>('expected_harvest');
  set expectedHarvest(int? value) => setField<int>('expected_harvest', value);

  int? get harvestedQuantity => getField<int>('harvested_quantity');
  set harvestedQuantity(int? value) =>
      setField<int>('harvested_quantity', value);

  DateTime? get harvestDate => getField<DateTime>('harvest_date');
  set harvestDate(DateTime? value) => setField<DateTime>('harvest_date', value);

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  String? get statusBgColor => getField<String>('status_bg_color');
  set statusBgColor(String? value) =>
      setField<String>('status_bg_color', value);

  String? get statusTextColor => getField<String>('status_text_color');
  set statusTextColor(String? value) =>
      setField<String>('status_text_color', value);
}
