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

  bool get safetyConfirmed => getField<bool>('safety_confirmed')!;
  set safetyConfirmed(bool value) => setField<bool>('safety_confirmed', value);

  double? get doseAmount => getField<double>('dose_amount');
  set doseAmount(double? value) => setField<double>('dose_amount', value);

  String? get doseUnit => getField<String>('dose_unit');
  set doseUnit(String? value) => setField<String>('dose_unit', value);

  String? get volume => getField<String>('volume');
  set volume(String? value) => setField<String>('volume', value);

  String? get volumeUnit => getField<String>('volume_unit');
  set volumeUnit(String? value) => setField<String>('volume_unit', value);
}
