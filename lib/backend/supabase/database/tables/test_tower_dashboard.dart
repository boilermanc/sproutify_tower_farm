import '../database.dart';

class TestTowerDashboardTable extends SupabaseTable<TestTowerDashboardRow> {
  @override
  String get tableName => 'test_tower_dashboard';

  @override
  TestTowerDashboardRow createRow(Map<String, dynamic> data) =>
      TestTowerDashboardRow(data);
}

class TestTowerDashboardRow extends SupabaseDataRow {
  TestTowerDashboardRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TestTowerDashboardTable();

  int? get rowNumber => getField<int>('row_number');
  set rowNumber(int? value) => setField<int>('row_number', value);

  int? get towerNumberWithinRow => getField<int>('tower_number_within_row');
  set towerNumberWithinRow(int? value) =>
      setField<int>('tower_number_within_row', value);

  String? get towerLocation => getField<String>('tower_location');
  set towerLocation(String? value) => setField<String>('tower_location', value);
}
