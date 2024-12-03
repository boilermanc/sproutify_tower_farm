import '../database.dart';

class VTowerStateVerificationTable
    extends SupabaseTable<VTowerStateVerificationRow> {
  @override
  String get tableName => 'v_tower_state_verification';

  @override
  VTowerStateVerificationRow createRow(Map<String, dynamic> data) =>
      VTowerStateVerificationRow(data);
}

class VTowerStateVerificationRow extends SupabaseDataRow {
  VTowerStateVerificationRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VTowerStateVerificationTable();

  int? get towerId => getField<int>('tower_id');
  set towerId(int? value) => setField<int>('tower_id', value);

  int? get plantId => getField<int>('plant_id');
  set plantId(int? value) => setField<int>('plant_id', value);

  int? get lastActionType => getField<int>('last_action_type');
  set lastActionType(int? value) => setField<int>('last_action_type', value);

  DateTime? get lastActionDate => getField<DateTime>('last_action_date');
  set lastActionDate(DateTime? value) =>
      setField<DateTime>('last_action_date', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);
}
