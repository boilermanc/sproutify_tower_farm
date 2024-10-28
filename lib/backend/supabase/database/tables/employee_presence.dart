import '../database.dart';

class EmployeePresenceTable extends SupabaseTable<EmployeePresenceRow> {
  @override
  String get tableName => 'employee_presence';

  @override
  EmployeePresenceRow createRow(Map<String, dynamic> data) =>
      EmployeePresenceRow(data);
}

class EmployeePresenceRow extends SupabaseDataRow {
  EmployeePresenceRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => EmployeePresenceTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get timestamp => getField<DateTime>('timestamp');
  set timestamp(DateTime? value) => setField<DateTime>('timestamp', value);

  int? get personCount => getField<int>('person_count');
  set personCount(int? value) => setField<int>('person_count', value);

  String? get eventType => getField<String>('event_type');
  set eventType(String? value) => setField<String>('event_type', value);

  double? get durationMinutes => getField<double>('duration_minutes');
  set durationMinutes(double? value) =>
      setField<double>('duration_minutes', value);
}
