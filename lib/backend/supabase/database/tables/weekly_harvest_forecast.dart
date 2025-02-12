import '../database.dart';

class WeeklyHarvestForecastTable
    extends SupabaseTable<WeeklyHarvestForecastRow> {
  @override
  String get tableName => 'weekly_harvest_forecast';

  @override
  WeeklyHarvestForecastRow createRow(Map<String, dynamic> data) =>
      WeeklyHarvestForecastRow(data);
}

class WeeklyHarvestForecastRow extends SupabaseDataRow {
  WeeklyHarvestForecastRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => WeeklyHarvestForecastTable();

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);

  String? get farmName => getField<String>('farm_name');
  set farmName(String? value) => setField<String>('farm_name', value);

  String? get harvestDay => getField<String>('harvest_day');
  set harvestDay(String? value) => setField<String>('harvest_day', value);

  DateTime? get expectedReadyDate => getField<DateTime>('expected_ready_date');
  set expectedReadyDate(DateTime? value) =>
      setField<DateTime>('expected_ready_date', value);

  String? get plantName => getField<String>('plant_name');
  set plantName(String? value) => setField<String>('plant_name', value);

  int? get towersReady => getField<int>('towers_ready');
  set towersReady(int? value) => setField<int>('towers_ready', value);

  int? get totalPlantsReady => getField<int>('total_plants_ready');
  set totalPlantsReady(int? value) =>
      setField<int>('total_plants_ready', value);

  List<String> get towerList => getListField<String>('tower_list');
  set towerList(List<String>? value) =>
      setListField<String>('tower_list', value);

  String? get statusBgColor => getField<String>('status_bg_color');
  set statusBgColor(String? value) =>
      setField<String>('status_bg_color', value);

  String? get statusTextColor => getField<String>('status_text_color');
  set statusTextColor(String? value) =>
      setField<String>('status_text_color', value);
}
