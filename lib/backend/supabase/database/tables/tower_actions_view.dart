import '../database.dart';

class TowerActionsViewTable extends SupabaseTable<TowerActionsViewRow> {
  @override
  String get tableName => 'tower_actions_view';

  @override
  TowerActionsViewRow createRow(Map<String, dynamic> data) =>
      TowerActionsViewRow(data);
}

class TowerActionsViewRow extends SupabaseDataRow {
  TowerActionsViewRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TowerActionsViewTable();

  int? get towerId => getField<int>('tower_id');
  set towerId(int? value) => setField<int>('tower_id', value);

  String? get towerIdentifier => getField<String>('tower_identifier');
  set towerIdentifier(String? value) =>
      setField<String>('tower_identifier', value);

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);

  String? get currentAction => getField<String>('current_action');
  set currentAction(String? value) => setField<String>('current_action', value);

  String? get currentActionIcon => getField<String>('current_action_icon');
  set currentActionIcon(String? value) =>
      setField<String>('current_action_icon', value);

  DateTime? get currentActionDate => getField<DateTime>('current_action_date');
  set currentActionDate(DateTime? value) =>
      setField<DateTime>('current_action_date', value);

  String? get currentPlant => getField<String>('current_plant');
  set currentPlant(String? value) => setField<String>('current_plant', value);

  int? get currentQuantity => getField<int>('current_quantity');
  set currentQuantity(int? value) => setField<int>('current_quantity', value);

  String? get previousAction => getField<String>('previous_action');
  set previousAction(String? value) =>
      setField<String>('previous_action', value);

  DateTime? get previousActionDate =>
      getField<DateTime>('previous_action_date');
  set previousActionDate(DateTime? value) =>
      setField<DateTime>('previous_action_date', value);

  String? get previousPlant => getField<String>('previous_plant');
  set previousPlant(String? value) => setField<String>('previous_plant', value);

  int? get previousQuantity => getField<int>('previous_quantity');
  set previousQuantity(int? value) => setField<int>('previous_quantity', value);

  String? get towerStatus => getField<String>('tower_status');
  set towerStatus(String? value) => setField<String>('tower_status', value);

  String? get currentStatusBackgroundColor =>
      getField<String>('current_status_background_color');
  set currentStatusBackgroundColor(String? value) =>
      setField<String>('current_status_background_color', value);

  String? get previousStatusBackgroundColor =>
      getField<String>('previous_status_background_color');
  set previousStatusBackgroundColor(String? value) =>
      setField<String>('previous_status_background_color', value);

  String? get nextStatusBackgroundColor =>
      getField<String>('next_status_background_color');
  set nextStatusBackgroundColor(String? value) =>
      setField<String>('next_status_background_color', value);

  String? get nextPossibleActions => getField<String>('next_possible_actions');
  set nextPossibleActions(String? value) =>
      setField<String>('next_possible_actions', value);

  String? get nextActionColors => getField<String>('next_action_colors');
  set nextActionColors(String? value) =>
      setField<String>('next_action_colors', value);
}
