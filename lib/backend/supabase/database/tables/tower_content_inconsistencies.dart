import '../database.dart';

class TowerContentInconsistenciesTable
    extends SupabaseTable<TowerContentInconsistenciesRow> {
  @override
  String get tableName => 'tower_content_inconsistencies';

  @override
  TowerContentInconsistenciesRow createRow(Map<String, dynamic> data) =>
      TowerContentInconsistenciesRow(data);
}

class TowerContentInconsistenciesRow extends SupabaseDataRow {
  TowerContentInconsistenciesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TowerContentInconsistenciesTable();

  int? get actionId => getField<int>('action_id');
  set actionId(int? value) => setField<int>('action_id', value);

  int? get towerId => getField<int>('tower_id');
  set towerId(int? value) => setField<int>('tower_id', value);

  int? get actionPlantId => getField<int>('action_plant_id');
  set actionPlantId(int? value) => setField<int>('action_plant_id', value);

  int? get actionQuantity => getField<int>('action_quantity');
  set actionQuantity(int? value) => setField<int>('action_quantity', value);

  int? get contentId => getField<int>('content_id');
  set contentId(int? value) => setField<int>('content_id', value);

  int? get contentPlantId => getField<int>('content_plant_id');
  set contentPlantId(int? value) => setField<int>('content_plant_id', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  int? get totalQuantity => getField<int>('total_quantity');
  set totalQuantity(int? value) => setField<int>('total_quantity', value);

  int? get availableQuantity => getField<int>('available_quantity');
  set availableQuantity(int? value) =>
      setField<int>('available_quantity', value);
}
