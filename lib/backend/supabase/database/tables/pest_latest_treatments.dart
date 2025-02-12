import '../database.dart';

class PestLatestTreatmentsTable extends SupabaseTable<PestLatestTreatmentsRow> {
  @override
  String get tableName => 'pest_latest_treatments';

  @override
  PestLatestTreatmentsRow createRow(Map<String, dynamic> data) =>
      PestLatestTreatmentsRow(data);
}

class PestLatestTreatmentsRow extends SupabaseDataRow {
  PestLatestTreatmentsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PestLatestTreatmentsTable();

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);

  DateTime? get applicationDate => getField<DateTime>('application_date');
  set applicationDate(DateTime? value) =>
      setField<DateTime>('application_date', value);

  String? get appliedChemical => getField<String>('applied_chemical');
  set appliedChemical(String? value) =>
      setField<String>('applied_chemical', value);

  String? get treatmentArea => getField<String>('treatment_area');
  set treatmentArea(String? value) => setField<String>('treatment_area', value);

  double? get temperature => getField<double>('temperature');
  set temperature(double? value) => setField<double>('temperature', value);

  double? get humidity => getField<double>('humidity');
  set humidity(double? value) => setField<double>('humidity', value);

  String? get notes => getField<String>('notes');
  set notes(String? value) => setField<String>('notes', value);

  bool? get safetyConfirmed => getField<bool>('safety_confirmed');
  set safetyConfirmed(bool? value) => setField<bool>('safety_confirmed', value);

  String? get applicatorName => getField<String>('applicator_name');
  set applicatorName(String? value) =>
      setField<String>('applicator_name', value);

  double? get doseAmount => getField<double>('dose_amount');
  set doseAmount(double? value) => setField<double>('dose_amount', value);

  String? get doseUnit => getField<String>('dose_unit');
  set doseUnit(String? value) => setField<String>('dose_unit', value);

  String? get volume => getField<String>('volume');
  set volume(String? value) => setField<String>('volume', value);

  String? get volumeUnit => getField<String>('volume_unit');
  set volumeUnit(String? value) => setField<String>('volume_unit', value);
}
