import '../database.dart';

class ApplicationMethodsTable extends SupabaseTable<ApplicationMethodsRow> {
  @override
  String get tableName => 'application_methods';

  @override
  ApplicationMethodsRow createRow(Map<String, dynamic> data) =>
      ApplicationMethodsRow(data);
}

class ApplicationMethodsRow extends SupabaseDataRow {
  ApplicationMethodsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ApplicationMethodsTable();

  String get methodId => getField<String>('method_id')!;
  set methodId(String value) => setField<String>('method_id', value);

  String get methodName => getField<String>('method_name')!;
  set methodName(String value) => setField<String>('method_name', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  DateTime get updatedAt => getField<DateTime>('updated_at')!;
  set updatedAt(DateTime value) => setField<DateTime>('updated_at', value);
}
