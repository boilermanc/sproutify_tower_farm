import '../database.dart';

class TowerStateSummaryTable extends SupabaseTable<TowerStateSummaryRow> {
  @override
  String get tableName => 'tower_state_summary';

  @override
  TowerStateSummaryRow createRow(Map<String, dynamic> data) =>
      TowerStateSummaryRow(data);
}

class TowerStateSummaryRow extends SupabaseDataRow {
  TowerStateSummaryRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TowerStateSummaryTable();

  String? get state => getField<String>('state');
  set state(String? value) => setField<String>('state', value);

  int? get towerCount => getField<int>('tower_count');
  set towerCount(int? value) => setField<int>('tower_count', value);

  String? get stateColor => getField<String>('state_color');
  set stateColor(String? value) => setField<String>('state_color', value);

  DateTime? get earliestDate => getField<DateTime>('earliest_date');
  set earliestDate(DateTime? value) =>
      setField<DateTime>('earliest_date', value);

  DateTime? get latestDate => getField<DateTime>('latest_date');
  set latestDate(DateTime? value) => setField<DateTime>('latest_date', value);
}
