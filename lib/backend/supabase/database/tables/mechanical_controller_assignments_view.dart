import '../database.dart';

class MechanicalControllerAssignmentsViewTable
    extends SupabaseTable<MechanicalControllerAssignmentsViewRow> {
  @override
  String get tableName => 'mechanical_controller_assignments_view';

  @override
  MechanicalControllerAssignmentsViewRow createRow(Map<String, dynamic> data) =>
      MechanicalControllerAssignmentsViewRow(data);
}

class MechanicalControllerAssignmentsViewRow extends SupabaseDataRow {
  MechanicalControllerAssignmentsViewRow(Map<String, dynamic> data)
      : super(data);

  @override
  SupabaseTable get table => MechanicalControllerAssignmentsViewTable();

  int? get assignmentId => getField<int>('assignment_id');
  set assignmentId(int? value) => setField<int>('assignment_id', value);

  int? get mechanicalId => getField<int>('mechanical_id');
  set mechanicalId(int? value) => setField<int>('mechanical_id', value);

  String? get mechanicalName => getField<String>('mechanical_name');
  set mechanicalName(String? value) =>
      setField<String>('mechanical_name', value);

  String? get mechanicalModel => getField<String>('mechanical_model');
  set mechanicalModel(String? value) =>
      setField<String>('mechanical_model', value);

  String? get categoryName => getField<String>('category_name');
  set categoryName(String? value) => setField<String>('category_name', value);

  String? get typeName => getField<String>('type_name');
  set typeName(String? value) => setField<String>('type_name', value);

  String? get controllerId => getField<String>('controller_id');
  set controllerId(String? value) => setField<String>('controller_id', value);

  String? get controllerName => getField<String>('controller_name');
  set controllerName(String? value) =>
      setField<String>('controller_name', value);

  String? get controllerType => getField<String>('controller_type');
  set controllerType(String? value) =>
      setField<String>('controller_type', value);

  String? get controllerModel => getField<String>('controller_model');
  set controllerModel(String? value) =>
      setField<String>('controller_model', value);

  String? get controllerLocation => getField<String>('controller_location');
  set controllerLocation(String? value) =>
      setField<String>('controller_location', value);

  bool? get controllerActive => getField<bool>('controller_active');
  set controllerActive(bool? value) =>
      setField<bool>('controller_active', value);

  int? get channelNumber => getField<int>('channel_number');
  set channelNumber(int? value) => setField<int>('channel_number', value);

  String? get channelName => getField<String>('channel_name');
  set channelName(String? value) => setField<String>('channel_name', value);

  bool? get isPrimaryController => getField<bool>('is_primary_controller');
  set isPrimaryController(bool? value) =>
      setField<bool>('is_primary_controller', value);

  DateTime? get dateAssigned => getField<DateTime>('date_assigned');
  set dateAssigned(DateTime? value) =>
      setField<DateTime>('date_assigned', value);

  String? get notes => getField<String>('notes');
  set notes(String? value) => setField<String>('notes', value);

  String? get assignmentStatus => getField<String>('assignment_status');
  set assignmentStatus(String? value) =>
      setField<String>('assignment_status', value);
}
