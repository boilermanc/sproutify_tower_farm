import '../database.dart';

class TowerLastActionTable extends SupabaseTable<TowerLastActionRow> {
  @override
  String get tableName => 'tower_last_action';

  @override
  TowerLastActionRow createRow(Map<String, dynamic> data) =>
      TowerLastActionRow(data);
}

class TowerLastActionRow extends SupabaseDataRow {
  TowerLastActionRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TowerLastActionTable();

  int? get towerId => getField<int>('tower_id');
  set towerId(int? value) => setField<int>('tower_id', value);

  String? get towerIdentifier => getField<String>('tower_identifier');
  set towerIdentifier(String? value) =>
      setField<String>('tower_identifier', value);

  dynamic? get actionOrTask => getField<dynamic>('action_or_task');
  set actionOrTask(dynamic? value) =>
      setField<dynamic>('action_or_task', value);
}
