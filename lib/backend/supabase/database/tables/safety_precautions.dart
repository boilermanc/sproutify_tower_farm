import '../database.dart';

class SafetyPrecautionsTable extends SupabaseTable<SafetyPrecautionsRow> {
  @override
  String get tableName => 'safety_precautions';

  @override
  SafetyPrecautionsRow createRow(Map<String, dynamic> data) =>
      SafetyPrecautionsRow(data);
}

class SafetyPrecautionsRow extends SupabaseDataRow {
  SafetyPrecautionsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SafetyPrecautionsTable();

  String get precautionId => getField<String>('precaution_id')!;
  set precautionId(String value) => setField<String>('precaution_id', value);

  String get precautionName => getField<String>('precaution_name')!;
  set precautionName(String value) =>
      setField<String>('precaution_name', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);
}
