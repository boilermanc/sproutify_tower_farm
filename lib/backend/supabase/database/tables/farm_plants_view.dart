import '../database.dart';

class FarmPlantsViewTable extends SupabaseTable<FarmPlantsViewRow> {
  @override
  String get tableName => 'farm_plants_view';

  @override
  FarmPlantsViewRow createRow(Map<String, dynamic> data) =>
      FarmPlantsViewRow(data);
}

class FarmPlantsViewRow extends SupabaseDataRow {
  FarmPlantsViewRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => FarmPlantsViewTable();

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);

  int? get plantId => getField<int>('plant_id');
  set plantId(int? value) => setField<int>('plant_id', value);

  String? get plantName => getField<String>('plant_name');
  set plantName(String? value) => setField<String>('plant_name', value);

  String? get shortDescription => getField<String>('short_description');
  set shortDescription(String? value) =>
      setField<String>('short_description', value);

  bool? get isActive => getField<bool>('is_active');
  set isActive(bool? value) => setField<bool>('is_active', value);

  String? get imageUrl => getField<String>('image_url');
  set imageUrl(String? value) => setField<String>('image_url', value);
}
