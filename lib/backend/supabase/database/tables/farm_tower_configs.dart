import '../database.dart';

class FarmTowerConfigsTable extends SupabaseTable<FarmTowerConfigsRow> {
  @override
  String get tableName => 'farm_tower_configs';

  @override
  FarmTowerConfigsRow createRow(Map<String, dynamic> data) =>
      FarmTowerConfigsRow(data);
}

class FarmTowerConfigsRow extends SupabaseDataRow {
  FarmTowerConfigsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => FarmTowerConfigsTable();

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);

  int? get numPorts => getField<int>('num_ports');
  set numPorts(int? value) => setField<int>('num_ports', value);

  int? get towerCount => getField<int>('tower_count');
  set towerCount(int? value) => setField<int>('tower_count', value);

  String? get displayName => getField<String>('display_name');
  set displayName(String? value) => setField<String>('display_name', value);
}
