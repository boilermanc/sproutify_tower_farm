import '../database.dart';

class TowerViewTable extends SupabaseTable<TowerViewRow> {
  @override
  String get tableName => 'tower_view';

  @override
  TowerViewRow createRow(Map<String, dynamic> data) => TowerViewRow(data);
}

class TowerViewRow extends SupabaseDataRow {
  TowerViewRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TowerViewTable();

  int? get towerId => getField<int>('tower_id');
  set towerId(int? value) => setField<int>('tower_id', value);

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);

  String? get towerIdentifier => getField<String>('tower_identifier');
  set towerIdentifier(String? value) =>
      setField<String>('tower_identifier', value);
}
