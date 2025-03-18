import '../database.dart';

class FracCodesTable extends SupabaseTable<FracCodesRow> {
  @override
  String get tableName => 'frac_codes';

  @override
  FracCodesRow createRow(Map<String, dynamic> data) => FracCodesRow(data);
}

class FracCodesRow extends SupabaseDataRow {
  FracCodesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => FracCodesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get moaCode => getField<String>('moa_code');
  set moaCode(String? value) => setField<String>('moa_code', value);

  String? get targetSiteAndCode => getField<String>('target_site_and_code');
  set targetSiteAndCode(String? value) =>
      setField<String>('target_site_and_code', value);

  String? get groupName => getField<String>('group_name');
  set groupName(String? value) => setField<String>('group_name', value);

  String? get chemicalOrBiologicalGroup =>
      getField<String>('chemical_or_biological_group');
  set chemicalOrBiologicalGroup(String? value) =>
      setField<String>('chemical_or_biological_group', value);

  String? get isoCommonName => getField<String>('iso_common_name');
  set isoCommonName(String? value) =>
      setField<String>('iso_common_name', value);

  String? get comments => getField<String>('comments');
  set comments(String? value) => setField<String>('comments', value);

  String? get fracGroupCode => getField<String>('frac_group_code');
  set fracGroupCode(String? value) =>
      setField<String>('frac_group_code', value);
}
