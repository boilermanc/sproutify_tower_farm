import '../database.dart';

class TowerActionSequencesTable extends SupabaseTable<TowerActionSequencesRow> {
  @override
  String get tableName => 'tower_action_sequences';

  @override
  TowerActionSequencesRow createRow(Map<String, dynamic> data) =>
      TowerActionSequencesRow(data);
}

class TowerActionSequencesRow extends SupabaseDataRow {
  TowerActionSequencesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TowerActionSequencesTable();

  int? get towerId => getField<int>('tower_id');
  set towerId(int? value) => setField<int>('tower_id', value);

  DateTime? get actionDate => getField<DateTime>('action_date');
  set actionDate(DateTime? value) => setField<DateTime>('action_date', value);

  List<int> get actionSequence => getListField<int>('action_sequence');
  set actionSequence(List<int>? value) =>
      setListField<int>('action_sequence', value);

  List<String> get actionNames => getListField<String>('action_names');
  set actionNames(List<String>? value) =>
      setListField<String>('action_names', value);

  List<int> get quantities => getListField<int>('quantities');
  set quantities(List<int>? value) => setListField<int>('quantities', value);

  int? get towerCapacity => getField<int>('tower_capacity');
  set towerCapacity(int? value) => setField<int>('tower_capacity', value);

  String? get sequenceStatus => getField<String>('sequence_status');
  set sequenceStatus(String? value) =>
      setField<String>('sequence_status', value);

  String? get sequenceType => getField<String>('sequence_type');
  set sequenceType(String? value) => setField<String>('sequence_type', value);
}
