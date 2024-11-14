import '../database.dart';

class TestPrecautionaryViewTable
    extends SupabaseTable<TestPrecautionaryViewRow> {
  @override
  String get tableName => 'test_precautionary_view';

  @override
  TestPrecautionaryViewRow createRow(Map<String, dynamic> data) =>
      TestPrecautionaryViewRow(data);
}

class TestPrecautionaryViewRow extends SupabaseDataRow {
  TestPrecautionaryViewRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TestPrecautionaryViewTable();

  String? get sdsId => getField<String>('sds_id');
  set sdsId(String? value) => setField<String>('sds_id', value);

  String? get statement => getField<String>('statement');
  set statement(String? value) => setField<String>('statement', value);
}
