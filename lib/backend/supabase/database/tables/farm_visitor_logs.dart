import '../database.dart';

class FarmVisitorLogsTable extends SupabaseTable<FarmVisitorLogsRow> {
  @override
  String get tableName => 'farm_visitor_logs';

  @override
  FarmVisitorLogsRow createRow(Map<String, dynamic> data) =>
      FarmVisitorLogsRow(data);
}

class FarmVisitorLogsRow extends SupabaseDataRow {
  FarmVisitorLogsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => FarmVisitorLogsTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);

  DateTime get visitDate => getField<DateTime>('visit_date')!;
  set visitDate(DateTime value) => setField<DateTime>('visit_date', value);

  String get visitorName => getField<String>('visitor_name')!;
  set visitorName(String value) => setField<String>('visitor_name', value);

  String? get company => getField<String>('company');
  set company(String? value) => setField<String>('company', value);

  String? get natureOfVisit => getField<String>('nature_of_visit');
  set natureOfVisit(String? value) =>
      setField<String>('nature_of_visit', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);
}
