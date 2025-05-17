import '../database.dart';

class HarvestAvailableViewTable extends SupabaseTable<HarvestAvailableViewRow> {
  @override
  String get tableName => 'harvest_available_view';

  @override
  HarvestAvailableViewRow createRow(Map<String, dynamic> data) =>
      HarvestAvailableViewRow(data);
}

class HarvestAvailableViewRow extends SupabaseDataRow {
  HarvestAvailableViewRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => HarvestAvailableViewTable();

  int? get batchId => getField<int>('batch_id');
  set batchId(int? value) => setField<int>('batch_id', value);

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);

  DateTime? get harvestDate => getField<DateTime>('harvest_date');
  set harvestDate(DateTime? value) => setField<DateTime>('harvest_date', value);

  String? get plantName => getField<String>('plant_name');
  set plantName(String? value) => setField<String>('plant_name', value);

  int? get qtyAvailable => getField<int>('qty_available');
  set qtyAvailable(int? value) => setField<int>('qty_available', value);
}
