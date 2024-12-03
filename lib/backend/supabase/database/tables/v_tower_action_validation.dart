import '../database.dart';

class VTowerActionValidationTable
    extends SupabaseTable<VTowerActionValidationRow> {
  @override
  String get tableName => 'v_tower_action_validation';

  @override
  VTowerActionValidationRow createRow(Map<String, dynamic> data) =>
      VTowerActionValidationRow(data);
}

class VTowerActionValidationRow extends SupabaseDataRow {
  VTowerActionValidationRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VTowerActionValidationTable();

  int? get towerId => getField<int>('tower_id');
  set towerId(int? value) => setField<int>('tower_id', value);

  DateTime? get actionDay => getField<DateTime>('action_day');
  set actionDay(DateTime? value) => setField<DateTime>('action_day', value);

  List<int> get actionSequence => getListField<int>('action_sequence');
  set actionSequence(List<int>? value) =>
      setListField<int>('action_sequence', value);

  List<int> get quantities => getListField<int>('quantities');
  set quantities(List<int>? value) => setListField<int>('quantities', value);

  List<int> get plantIds => getListField<int>('plant_ids');
  set plantIds(List<int>? value) => setListField<int>('plant_ids', value);

  List<String> get actionNames => getListField<String>('action_names');
  set actionNames(List<String>? value) =>
      setListField<String>('action_names', value);

  int? get towerCapacity => getField<int>('tower_capacity');
  set towerCapacity(int? value) => setField<int>('tower_capacity', value);

  String? get validationStatus => getField<String>('validation_status');
  set validationStatus(String? value) =>
      setField<String>('validation_status', value);
}
