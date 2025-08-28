import '../database.dart';

class SpacerHealthCheckTable extends SupabaseTable<SpacerHealthCheckRow> {
  @override
  String get tableName => 'spacer_health_check';

  @override
  SpacerHealthCheckRow createRow(Map<String, dynamic> data) =>
      SpacerHealthCheckRow(data);
}

class SpacerHealthCheckRow extends SupabaseDataRow {
  SpacerHealthCheckRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SpacerHealthCheckTable();

  int? get spacerId => getField<int>('spacer_id');
  set spacerId(int? value) => setField<int>('spacer_id', value);

  int? get initialQuantity => getField<int>('initial_quantity');
  set initialQuantity(int? value) => setField<int>('initial_quantity', value);

  int? get plantId => getField<int>('plant_id');
  set plantId(int? value) => setField<int>('plant_id', value);

  DateTime? get seededDate => getField<DateTime>('seeded_date');
  set seededDate(DateTime? value) => setField<DateTime>('seeded_date', value);

  DateTime? get seedDate => getField<DateTime>('seed_date');
  set seedDate(DateTime? value) => setField<DateTime>('seed_date', value);

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);

  String? get plantName => getField<String>('plant_name');
  set plantName(String? value) => setField<String>('plant_name', value);

  int? get readyMarks => getField<int>('ready_marks');
  set readyMarks(int? value) => setField<int>('ready_marks', value);

  int? get totalHarvested => getField<int>('total_harvested');
  set totalHarvested(int? value) => setField<int>('total_harvested', value);

  int? get totalWasted => getField<int>('total_wasted');
  set totalWasted(int? value) => setField<int>('total_wasted', value);

  int? get totalChildActions => getField<int>('total_child_actions');
  set totalChildActions(int? value) =>
      setField<int>('total_child_actions', value);

  DateTime? get lastActionDate => getField<DateTime>('last_action_date');
  set lastActionDate(DateTime? value) =>
      setField<DateTime>('last_action_date', value);

  int? get calculatedRemaining => getField<int>('calculated_remaining');
  set calculatedRemaining(int? value) =>
      setField<int>('calculated_remaining', value);

  String? get healthStatus => getField<String>('health_status');
  set healthStatus(String? value) => setField<String>('health_status', value);
}
