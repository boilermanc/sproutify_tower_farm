import '../database.dart';

class ExtendedFarmPlantsViewTable
    extends SupabaseTable<ExtendedFarmPlantsViewRow> {
  @override
  String get tableName => 'extended_farm_plants_view';

  @override
  ExtendedFarmPlantsViewRow createRow(Map<String, dynamic> data) =>
      ExtendedFarmPlantsViewRow(data);
}

class ExtendedFarmPlantsViewRow extends SupabaseDataRow {
  ExtendedFarmPlantsViewRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ExtendedFarmPlantsViewTable();

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);

  int? get plantId => getField<int>('plant_id');
  set plantId(int? value) => setField<int>('plant_id', value);

  String? get plantName => getField<String>('plant_name');
  set plantName(String? value) => setField<String>('plant_name', value);

  int? get actionId => getField<int>('action_id');
  set actionId(int? value) => setField<int>('action_id', value);

  String? get actionName => getField<String>('action_name');
  set actionName(String? value) => setField<String>('action_name', value);

  int? get towerId => getField<int>('tower_id');
  set towerId(int? value) => setField<int>('tower_id', value);

  String? get towerIdentifier => getField<String>('tower_identifier');
  set towerIdentifier(String? value) =>
      setField<String>('tower_identifier', value);

  int? get quantity => getField<int>('quantity');
  set quantity(int? value) => setField<int>('quantity', value);

  DateTime? get actionDate => getField<DateTime>('action_date');
  set actionDate(DateTime? value) => setField<DateTime>('action_date', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get userName => getField<String>('user_name');
  set userName(String? value) => setField<String>('user_name', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  DateTime? get seededDate => getField<DateTime>('seeded_date');
  set seededDate(DateTime? value) => setField<DateTime>('seeded_date', value);

  DateTime? get lastPlantingDate => getField<DateTime>('last_planting_date');
  set lastPlantingDate(DateTime? value) =>
      setField<DateTime>('last_planting_date', value);

  DateTime? get lastHarvestingDate =>
      getField<DateTime>('last_harvesting_date');
  set lastHarvestingDate(DateTime? value) =>
      setField<DateTime>('last_harvesting_date', value);
}
