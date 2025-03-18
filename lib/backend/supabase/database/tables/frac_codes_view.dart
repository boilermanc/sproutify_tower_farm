import '../database.dart';

class FracCodesViewTable extends SupabaseTable<FracCodesViewRow> {
  @override
  String get tableName => 'frac_codes_view';

  @override
  FracCodesViewRow createRow(Map<String, dynamic> data) =>
      FracCodesViewRow(data);
}

class FracCodesViewRow extends SupabaseDataRow {
  FracCodesViewRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => FracCodesViewTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  String? get moaCode => getField<String>('moa_code');
  set moaCode(String? value) => setField<String>('moa_code', value);

  String? get groupName => getField<String>('group_name');
  set groupName(String? value) => setField<String>('group_name', value);

  String? get isoCommonName => getField<String>('iso_common_name');
  set isoCommonName(String? value) =>
      setField<String>('iso_common_name', value);

  String? get fracGroupCode => getField<String>('frac_group_code');
  set fracGroupCode(String? value) =>
      setField<String>('frac_group_code', value);
}
