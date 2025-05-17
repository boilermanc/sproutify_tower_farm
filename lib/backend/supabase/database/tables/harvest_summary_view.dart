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

  DateTime? get harvestDate => getField<DateTime>('harvest_date');
  set harvestDate(DateTime? value) => setField<DateTime>('harvest_date', value);

  int? get plantId => getField<int>('plant_id');
  set plantId(int? value) => setField<int>('plant_id', value);

  String? get plantName => getField<String>('plant_name');
  set plantName(String? value) => setField<String>('plant_name', value);

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);

  int? get totalHarvestedQuantity => getField<int>('total_harvested_quantity');
  set totalHarvestedQuantity(int? value) =>
      setField<int>('total_harvested_quantity', value);
}
