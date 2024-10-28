import '../database.dart';

class CurrentTowerPlantsTable extends SupabaseTable<CurrentTowerPlantsRow> {
  @override
  String get tableName => 'current_tower_plants';

  @override
  CurrentTowerPlantsRow createRow(Map<String, dynamic> data) =>
      CurrentTowerPlantsRow(data);
}

class CurrentTowerPlantsRow extends SupabaseDataRow {
  CurrentTowerPlantsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CurrentTowerPlantsTable();

  int? get towerId => getField<int>('tower_id');
  set towerId(int? value) => setField<int>('tower_id', value);

  int? get contentId => getField<int>('content_id');
  set contentId(int? value) => setField<int>('content_id', value);

  int? get plantId => getField<int>('plant_id');
  set plantId(int? value) => setField<int>('plant_id', value);

  String? get plantName => getField<String>('plant_name');
  set plantName(String? value) => setField<String>('plant_name', value);

  int? get totalQuantity => getField<int>('total_quantity');
  set totalQuantity(int? value) => setField<int>('total_quantity', value);

  int? get availableQuantity => getField<int>('available_quantity');
  set availableQuantity(int? value) =>
      setField<int>('available_quantity', value);

  int? get portsUsed => getField<int>('ports_used');
  set portsUsed(int? value) => setField<int>('ports_used', value);
}
