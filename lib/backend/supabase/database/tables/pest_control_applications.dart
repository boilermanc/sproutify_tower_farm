import '../database.dart';

class PestControlApplicationsTable
    extends SupabaseTable<PestControlApplicationsRow> {
  @override
  String get tableName => 'pest_control_applications';

  @override
  PestControlApplicationsRow createRow(Map<String, dynamic> data) =>
      PestControlApplicationsRow(data);
}

class PestControlApplicationsRow extends SupabaseDataRow {
  PestControlApplicationsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PestControlApplicationsTable();

  String get applicationId => getField<String>('application_id')!;
  set applicationId(String value) => setField<String>('application_id', value);

  String get farmId => getField<String>('farm_id')!;
  set farmId(String value) => setField<String>('farm_id', value);

  String get userId => getField<String>('user_id')!;
  set userId(String value) => setField<String>('user_id', value);

  String get methodId => getField<String>('method_id')!;
  set methodId(String value) => setField<String>('method_id', value);

  String get treatmentArea => getField<String>('treatment_area')!;
  set treatmentArea(String value) => setField<String>('treatment_area', value);

  DateTime get applicationDate => getField<DateTime>('application_date')!;
  set applicationDate(DateTime value) =>
      setField<DateTime>('application_date', value);

  String? get notes => getField<String>('notes');
  set notes(String? value) => setField<String>('notes', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  DateTime get updatedAt => getField<DateTime>('updated_at')!;
  set updatedAt(DateTime value) => setField<DateTime>('updated_at', value);

  double? get temperature => getField<double>('temperature');
  set temperature(double? value) => setField<double>('temperature', value);

  double? get humidity => getField<double>('humidity');
  set humidity(double? value) => setField<double>('humidity', value);

  String get productId => getField<String>('product_id')!;
  set productId(String value) => setField<String>('product_id', value);
}
