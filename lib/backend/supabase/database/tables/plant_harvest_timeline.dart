import '../database.dart';

class PlantHarvestTimelineTable extends SupabaseTable<PlantHarvestTimelineRow> {
  @override
  String get tableName => 'plant_harvest_timeline';

  @override
  PlantHarvestTimelineRow createRow(Map<String, dynamic> data) =>
      PlantHarvestTimelineRow(data);
}

class PlantHarvestTimelineRow extends SupabaseDataRow {
  PlantHarvestTimelineRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PlantHarvestTimelineTable();

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);

  String? get farmName => getField<String>('farm_name');
  set farmName(String? value) => setField<String>('farm_name', value);

  int? get towerId => getField<int>('tower_id');
  set towerId(int? value) => setField<int>('tower_id', value);

  String? get towerIdentifier => getField<String>('tower_identifier');
  set towerIdentifier(String? value) =>
      setField<String>('tower_identifier', value);

  int? get plantId => getField<int>('plant_id');
  set plantId(int? value) => setField<int>('plant_id', value);

  String? get plantName => getField<String>('plant_name');
  set plantName(String? value) => setField<String>('plant_name', value);

  String? get firstHarvest => getField<String>('first_harvest');
  set firstHarvest(String? value) => setField<String>('first_harvest', value);

  DateTime? get seededDate => getField<DateTime>('seeded_date');
  set seededDate(DateTime? value) => setField<DateTime>('seeded_date', value);

  DateTime? get plantedDate => getField<DateTime>('planted_date');
  set plantedDate(DateTime? value) => setField<DateTime>('planted_date', value);

  DateTime? get expectedReadyDate => getField<DateTime>('expected_ready_date');
  set expectedReadyDate(DateTime? value) =>
      setField<DateTime>('expected_ready_date', value);

  String? get harvestStatus => getField<String>('harvest_status');
  set harvestStatus(String? value) => setField<String>('harvest_status', value);

  String? get statusBgColor => getField<String>('status_bg_color');
  set statusBgColor(String? value) =>
      setField<String>('status_bg_color', value);

  String? get statusTextColor => getField<String>('status_text_color');
  set statusTextColor(String? value) =>
      setField<String>('status_text_color', value);

  int? get daysSincePlanting => getField<int>('days_since_planting');
  set daysSincePlanting(int? value) =>
      setField<int>('days_since_planting', value);

  int? get daysUntilHarvest => getField<int>('days_until_harvest');
  set daysUntilHarvest(int? value) =>
      setField<int>('days_until_harvest', value);
}
