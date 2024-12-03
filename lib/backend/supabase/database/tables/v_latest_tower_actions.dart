import '../database.dart';

class VLatestTowerActionsTable extends SupabaseTable<VLatestTowerActionsRow> {
  @override
  String get tableName => 'v_latest_tower_actions';

  @override
  VLatestTowerActionsRow createRow(Map<String, dynamic> data) =>
      VLatestTowerActionsRow(data);
}

class VLatestTowerActionsRow extends SupabaseDataRow {
  VLatestTowerActionsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VLatestTowerActionsTable();

  int? get towerId => getField<int>('tower_id');
  set towerId(int? value) => setField<int>('tower_id', value);

  int? get actionTypeId => getField<int>('action_type_id');
  set actionTypeId(int? value) => setField<int>('action_type_id', value);

  int? get plantId => getField<int>('plant_id');
  set plantId(int? value) => setField<int>('plant_id', value);

  DateTime? get actionDate => getField<DateTime>('action_date');
  set actionDate(DateTime? value) => setField<DateTime>('action_date', value);

  int? get towerContentId => getField<int>('tower_content_id');
  set towerContentId(int? value) => setField<int>('tower_content_id', value);
}
