import '../database.dart';

class ColorCodesTable extends SupabaseTable<ColorCodesRow> {
  @override
  String get tableName => 'color_codes';

  @override
  ColorCodesRow createRow(Map<String, dynamic> data) => ColorCodesRow(data);
}

class ColorCodesRow extends SupabaseDataRow {
  ColorCodesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ColorCodesTable();

  String get codeId => getField<String>('code_id')!;
  set codeId(String value) => setField<String>('code_id', value);

  String get codeType => getField<String>('code_type')!;
  set codeType(String value) => setField<String>('code_type', value);

  String get codeKey => getField<String>('code_key')!;
  set codeKey(String value) => setField<String>('code_key', value);

  String get colorValue => getField<String>('color_value')!;
  set colorValue(String value) => setField<String>('color_value', value);
}
