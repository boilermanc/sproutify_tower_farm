import '../database.dart';

class TowerPlantsDetailTable extends SupabaseTable<TowerPlantsDetailRow> {
  @override
  String get tableName => 'tower_plants_detail';

  @override
  TowerPlantsDetailRow createRow(Map<String, dynamic> data) =>
      TowerPlantsDetailRow(data);
}

class TowerPlantsDetailRow extends SupabaseDataRow {
  TowerPlantsDetailRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TowerPlantsDetailTable();

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);

  int? get towerId => getField<int>('tower_id');
  set towerId(int? value) => setField<int>('tower_id', value);

  String? get towerIdentifier => getField<String>('tower_identifier');
  set towerIdentifier(String? value) =>
      setField<String>('tower_identifier', value);

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

  DateTime? get seededDate => getField<DateTime>('seeded_date');
  set seededDate(DateTime? value) => setField<DateTime>('seeded_date', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  int? get portsUsed => getField<int>('ports_used');
  set portsUsed(int? value) => setField<int>('ports_used', value);

  DateTime? get actionDate => getField<DateTime>('action_date');
  set actionDate(DateTime? value) => setField<DateTime>('action_date', value);

  String? get actionName => getField<String>('action_name');
  set actionName(String? value) => setField<String>('action_name', value);

  String? get actionColor => getField<String>('action_color');
  set actionColor(String? value) => setField<String>('action_color', value);

  int? get reservedQuantity => getField<int>('reserved_quantity');
  set reservedQuantity(int? value) => setField<int>('reserved_quantity', value);
}
