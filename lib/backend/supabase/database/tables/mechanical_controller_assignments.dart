import '../database.dart';

class MechanicalControllerAssignmentsTable
    extends SupabaseTable<MechanicalControllerAssignmentsRow> {
  @override
  String get tableName => 'mechanical_controller_assignments';

  @override
  MechanicalControllerAssignmentsRow createRow(Map<String, dynamic> data) =>
      MechanicalControllerAssignmentsRow(data);
}

class MechanicalControllerAssignmentsRow extends SupabaseDataRow {
  MechanicalControllerAssignmentsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => MechanicalControllerAssignmentsTable();

  int get assignmentId => getField<int>('assignment_id')!;
  set assignmentId(int value) => setField<int>('assignment_id', value);

  int get mechanicalId => getField<int>('mechanical_id')!;
  set mechanicalId(int value) => setField<int>('mechanical_id', value);

  String get controllerId => getField<String>('controller_id')!;
  set controllerId(String value) => setField<String>('controller_id', value);

  int? get channelNumber => getField<int>('channel_number');
  set channelNumber(int? value) => setField<int>('channel_number', value);

  String? get channelName => getField<String>('channel_name');
  set channelName(String? value) => setField<String>('channel_name', value);

  DateTime? get dateAssigned => getField<DateTime>('date_assigned');
  set dateAssigned(DateTime? value) =>
      setField<DateTime>('date_assigned', value);

  String? get assignedBy => getField<String>('assigned_by');
  set assignedBy(String? value) => setField<String>('assigned_by', value);

  bool? get isPrimaryController => getField<bool>('is_primary_controller');
  set isPrimaryController(bool? value) =>
      setField<bool>('is_primary_controller', value);

  String? get notes => getField<String>('notes');
  set notes(String? value) => setField<String>('notes', value);
}
