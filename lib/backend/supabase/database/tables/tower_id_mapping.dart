import '../database.dart';

class TowerIdMappingTable extends SupabaseTable<TowerIdMappingRow> {
  @override
  String get tableName => 'tower_id_mapping';

  @override
  TowerIdMappingRow createRow(Map<String, dynamic> data) =>
      TowerIdMappingRow(data);
}

class TowerIdMappingRow extends SupabaseDataRow {
  TowerIdMappingRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TowerIdMappingTable();

  int get towerId => getField<int>('tower_id')!;
  set towerId(int value) => setField<int>('tower_id', value);

  String get uuidId => getField<String>('uuid_id')!;
  set uuidId(String value) => setField<String>('uuid_id', value);
}
