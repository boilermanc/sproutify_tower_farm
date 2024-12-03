import '../database.dart';

class TowerStatusAndTasksViewTable
    extends SupabaseTable<TowerStatusAndTasksViewRow> {
  @override
  String get tableName => 'tower_status_and_tasks_view';

  @override
  TowerStatusAndTasksViewRow createRow(Map<String, dynamic> data) =>
      TowerStatusAndTasksViewRow(data);
}

class TowerStatusAndTasksViewRow extends SupabaseDataRow {
  TowerStatusAndTasksViewRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TowerStatusAndTasksViewTable();

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

  String? get nextPossibleActions => getField<String>('next_possible_actions');
  set nextPossibleActions(String? value) =>
      setField<String>('next_possible_actions', value);

  String? get nextStatusBackgroundColor =>
      getField<String>('next_status_background_color');
  set nextStatusBackgroundColor(String? value) =>
      setField<String>('next_status_background_color', value);

  int? get currentTaskId => getField<int>('current_task_id');
  set currentTaskId(int? value) => setField<int>('current_task_id', value);

  String? get currentTaskName => getField<String>('current_task_name');
  set currentTaskName(String? value) =>
      setField<String>('current_task_name', value);

  String? get currentTaskStatus => getField<String>('current_task_status');
  set currentTaskStatus(String? value) =>
      setField<String>('current_task_status', value);

  DateTime? get currentTaskDueDate =>
      getField<DateTime>('current_task_due_date');
  set currentTaskDueDate(DateTime? value) =>
      setField<DateTime>('current_task_due_date', value);

  String? get currentTaskAssignedTo =>
      getField<String>('current_task_assigned_to');
  set currentTaskAssignedTo(String? value) =>
      setField<String>('current_task_assigned_to', value);

  String? get currentTaskAssignedRoleId =>
      getField<String>('current_task_assigned_role_id');
  set currentTaskAssignedRoleId(String? value) =>
      setField<String>('current_task_assigned_role_id', value);

  String? get currentTaskNotes => getField<String>('current_task_notes');
  set currentTaskNotes(String? value) =>
      setField<String>('current_task_notes', value);

  int? get nextTaskId => getField<int>('next_task_id');
  set nextTaskId(int? value) => setField<int>('next_task_id', value);

  String? get nextTaskName => getField<String>('next_task_name');
  set nextTaskName(String? value) => setField<String>('next_task_name', value);

  DateTime? get nextTaskDueDate => getField<DateTime>('next_task_due_date');
  set nextTaskDueDate(DateTime? value) =>
      setField<DateTime>('next_task_due_date', value);

  String? get nextTaskAssignedTo => getField<String>('next_task_assigned_to');
  set nextTaskAssignedTo(String? value) =>
      setField<String>('next_task_assigned_to', value);

  String? get nextTaskAssignedRoleId =>
      getField<String>('next_task_assigned_role_id');
  set nextTaskAssignedRoleId(String? value) =>
      setField<String>('next_task_assigned_role_id', value);

  String? get nextTaskNotes => getField<String>('next_task_notes');
  set nextTaskNotes(String? value) =>
      setField<String>('next_task_notes', value);

  String? get growingPlantName => getField<String>('growing_plant_name');
  set growingPlantName(String? value) =>
      setField<String>('growing_plant_name', value);

  DateTime? get growingSeededDate => getField<DateTime>('growing_seeded_date');
  set growingSeededDate(DateTime? value) =>
      setField<DateTime>('growing_seeded_date', value);

  DateTime? get growingPlantedDate =>
      getField<DateTime>('growing_planted_date');
  set growingPlantedDate(DateTime? value) =>
      setField<DateTime>('growing_planted_date', value);

  int? get growingQuantity => getField<int>('growing_quantity');
  set growingQuantity(int? value) => setField<int>('growing_quantity', value);

  dynamic? get nextActionDisplay => getField<dynamic>('next_action_display');
  set nextActionDisplay(dynamic? value) =>
      setField<dynamic>('next_action_display', value);

  int? get actionId => getField<int>('action_id');
  set actionId(int? value) => setField<int>('action_id', value);

  int? get tcTotalQuantity => getField<int>('tc_total_quantity');
  set tcTotalQuantity(int? value) => setField<int>('tc_total_quantity', value);

  int? get tcAvailableQuantity => getField<int>('tc_available_quantity');
  set tcAvailableQuantity(int? value) =>
      setField<int>('tc_available_quantity', value);

  int? get tcReservedQuantity => getField<int>('tc_reserved_quantity');
  set tcReservedQuantity(int? value) =>
      setField<int>('tc_reserved_quantity', value);

  int? get tcAllocatedQuantity => getField<int>('tc_allocated_quantity');
  set tcAllocatedQuantity(int? value) =>
      setField<int>('tc_allocated_quantity', value);

  int? get tcPortsUsed => getField<int>('tc_ports_used');
  set tcPortsUsed(int? value) => setField<int>('tc_ports_used', value);

  DateTime? get tcSeededDate => getField<DateTime>('tc_seeded_date');
  set tcSeededDate(DateTime? value) =>
      setField<DateTime>('tc_seeded_date', value);
}
