import '../database.dart';

class PlantHarvestTimelineNewTable
    extends SupabaseTable<PlantHarvestTimelineNewRow> {
  @override
  String get tableName => 'plant_harvest_timeline_new';

  @override
  PlantHarvestTimelineNewRow createRow(Map<String, dynamic> data) =>
      PlantHarvestTimelineNewRow(data);
}

class PlantHarvestTimelineNewRow extends SupabaseDataRow {
  PlantHarvestTimelineNewRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PlantHarvestTimelineNewTable();

  int? get towerId => getField<int>('tower_id');
  set towerId(int? value) => setField<int>('tower_id', value);

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);

  int? get contentId => getField<int>('content_id');
  set contentId(int? value) => setField<int>('content_id', value);

  String? get towerIdentifier => getField<String>('tower_identifier');
  set towerIdentifier(String? value) =>
      setField<String>('tower_identifier', value);

  int? get plantId => getField<int>('plant_id');
  set plantId(int? value) => setField<int>('plant_id', value);

  String? get plantName => getField<String>('plant_name');
  set plantName(String? value) => setField<String>('plant_name', value);

  String? get towerStatus => getField<String>('tower_status');
  set towerStatus(String? value) => setField<String>('tower_status', value);

  DateTime? get seededDate => getField<DateTime>('seeded_date');
  set seededDate(DateTime? value) => setField<DateTime>('seeded_date', value);

  DateTime? get plantedDate => getField<DateTime>('planted_date');
  set plantedDate(DateTime? value) => setField<DateTime>('planted_date', value);

  String? get growthTime => getField<String>('growth_time');
  set growthTime(String? value) => setField<String>('growth_time', value);

  DateTime? get expectedDate => getField<DateTime>('expected_date');
  set expectedDate(DateTime? value) =>
      setField<DateTime>('expected_date', value);

  String? get notes => getField<String>('notes');
  set notes(String? value) => setField<String>('notes', value);

  DateTime? get datePlanted => getField<DateTime>('date_planted');
  set datePlanted(DateTime? value) => setField<DateTime>('date_planted', value);

  String? get statusColor => getField<String>('status_color');
  set statusColor(String? value) => setField<String>('status_color', value);

  String? get textColor => getField<String>('text_color');
  set textColor(String? value) => setField<String>('text_color', value);
}
