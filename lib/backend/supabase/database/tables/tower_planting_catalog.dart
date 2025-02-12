import '../database.dart';

class TowerPlantingCatalogTable extends SupabaseTable<TowerPlantingCatalogRow> {
  @override
  String get tableName => 'tower_planting_catalog';

  @override
  TowerPlantingCatalogRow createRow(Map<String, dynamic> data) =>
      TowerPlantingCatalogRow(data);
}

class TowerPlantingCatalogRow extends SupabaseDataRow {
  TowerPlantingCatalogRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TowerPlantingCatalogTable();

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);

  int? get plantId => getField<int>('plant_id');
  set plantId(int? value) => setField<int>('plant_id', value);

  String? get plantName => getField<String>('plant_name');
  set plantName(String? value) => setField<String>('plant_name', value);

  bool? get isActive => getField<bool>('is_active');
  set isActive(bool? value) => setField<bool>('is_active', value);

  int? get spacerId => getField<int>('spacer_id');
  set spacerId(int? value) => setField<int>('spacer_id', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  DateTime? get seededDate => getField<DateTime>('seeded_date');
  set seededDate(DateTime? value) => setField<DateTime>('seeded_date', value);

  DateTime? get expectedReadyDate => getField<DateTime>('expected_ready_date');
  set expectedReadyDate(DateTime? value) =>
      setField<DateTime>('expected_ready_date', value);

  int? get spacerQuantity => getField<int>('spacer_quantity');
  set spacerQuantity(int? value) => setField<int>('spacer_quantity', value);

  bool? get isSpacer => getField<bool>('is_spacer');
  set isSpacer(bool? value) => setField<bool>('is_spacer', value);
}
