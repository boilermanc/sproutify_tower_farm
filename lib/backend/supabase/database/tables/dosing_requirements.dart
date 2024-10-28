import '../database.dart';

class DosingRequirementsTable extends SupabaseTable<DosingRequirementsRow> {
  @override
  String get tableName => 'dosing_requirements';

  @override
  DosingRequirementsRow createRow(Map<String, dynamic> data) =>
      DosingRequirementsRow(data);
}

class DosingRequirementsRow extends SupabaseDataRow {
  DosingRequirementsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => DosingRequirementsTable();

  String get dosingId => getField<String>('dosing_id')!;
  set dosingId(String value) => setField<String>('dosing_id', value);

  String get productId => getField<String>('product_id')!;
  set productId(String value) => setField<String>('product_id', value);

  String get dosageRate => getField<String>('dosage_rate')!;
  set dosageRate(String value) => setField<String>('dosage_rate', value);

  String get applicationMethodId => getField<String>('application_method_id')!;
  set applicationMethodId(String value) =>
      setField<String>('application_method_id', value);

  String get unitId => getField<String>('unit_id')!;
  set unitId(String value) => setField<String>('unit_id', value);

  String? get notes => getField<String>('notes');
  set notes(String? value) => setField<String>('notes', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  DateTime get updatedAt => getField<DateTime>('updated_at')!;
  set updatedAt(DateTime value) => setField<DateTime>('updated_at', value);
}
