import '../database.dart';

class ExpandedPrecautionaryStatementsTable
    extends SupabaseTable<ExpandedPrecautionaryStatementsRow> {
  @override
  String get tableName => 'expanded_precautionary_statements';

  @override
  ExpandedPrecautionaryStatementsRow createRow(Map<String, dynamic> data) =>
      ExpandedPrecautionaryStatementsRow(data);
}

class ExpandedPrecautionaryStatementsRow extends SupabaseDataRow {
  ExpandedPrecautionaryStatementsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ExpandedPrecautionaryStatementsTable();

  String? get sdsId => getField<String>('sds_id');
  set sdsId(String? value) => setField<String>('sds_id', value);

  String? get precautionaryStatement =>
      getField<String>('precautionary_statement');
  set precautionaryStatement(String? value) =>
      setField<String>('precautionary_statement', value);
}
