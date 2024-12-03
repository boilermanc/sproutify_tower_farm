import '../database.dart';

class FarmPlantsTable extends SupabaseTable<FarmPlantsRow> {
  @override
  String get tableName => 'farm_plants';

  @override
  FarmPlantsRow createRow(Map<String, dynamic> data) => FarmPlantsRow(data);
}

class FarmPlantsRow extends SupabaseDataRow {
  FarmPlantsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => FarmPlantsTable();

  int get farmPlantId => getField<int>('farm_plant_id')!;
  set farmPlantId(int value) => setField<int>('farm_plant_id', value);

  String get farmId => getField<String>('farm_id')!;
  set farmId(String value) => setField<String>('farm_id', value);

  int get plantId => getField<int>('plant_id')!;
  set plantId(int value) => setField<int>('plant_id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get createdBy => getField<String>('created_by')!;
  set createdBy(String value) => setField<String>('created_by', value);

  bool get isActive => getField<bool>('is_active')!;
  set isActive(bool value) => setField<bool>('is_active', value);
}
