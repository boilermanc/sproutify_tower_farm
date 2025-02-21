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

  int? get towerId => getField<int>('tower_id');
  set towerId(int? value) => setField<int>('tower_id', value);

  String? get towerIdentifier => getField<String>('tower_identifier');
  set towerIdentifier(String? value) =>
      setField<String>('tower_identifier', value);

  int? get plantId => getField<int>('plant_id');
  set plantId(int? value) => setField<int>('plant_id', value);

  String? get plantName => getField<String>('plant_name');
  set plantName(String? value) => setField<String>('plant_name', value);

  DateTime? get expectedReadyDate => getField<DateTime>('expected_ready_date');
  set expectedReadyDate(DateTime? value) =>
      setField<DateTime>('expected_ready_date', value);

  String? get harvestDay => getField<String>('harvest_day');
  set harvestDay(String? value) => setField<String>('harvest_day', value);

  int? get quantityReady => getField<int>('quantity_ready');
  set quantityReady(int? value) => setField<int>('quantity_ready', value);

  String? get statusColor => getField<String>('status_color');
  set statusColor(String? value) => setField<String>('status_color', value);

  String? get textColor => getField<String>('text_color');
  set textColor(String? value) => setField<String>('text_color', value);
}
