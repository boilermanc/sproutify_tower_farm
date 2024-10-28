import '../database.dart';

class MechanicalActionsTable extends SupabaseTable<MechanicalActionsRow> {
  @override
  String get tableName => 'mechanical_actions';

  @override
  MechanicalActionsRow createRow(Map<String, dynamic> data) =>
      MechanicalActionsRow(data);
}

class MechanicalActionsRow extends SupabaseDataRow {
  MechanicalActionsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => MechanicalActionsTable();

  int get actionId => getField<int>('action_id')!;
  set actionId(int value) => setField<int>('action_id', value);

  int? get mechanicalId => getField<int>('mechanical_id');
  set mechanicalId(int? value) => setField<int>('mechanical_id', value);

  String? get action => getField<String>('action');
  set action(String? value) => setField<String>('action', value);

  double? get value => getField<double>('value');
  set value(double? value) => setField<double>('value', value);

  String? get performedBy => getField<String>('performed_by');
  set performedBy(String? value) => setField<String>('performed_by', value);

  DateTime get datePerformed => getField<DateTime>('date_performed')!;
  set datePerformed(DateTime value) =>
      setField<DateTime>('date_performed', value);

  String? get measurementSystem => getField<String>('measurement_system');
  set measurementSystem(String? value) =>
      setField<String>('measurement_system', value);
}
