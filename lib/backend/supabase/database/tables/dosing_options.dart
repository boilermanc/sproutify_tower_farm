import '../database.dart';

class DosingOptionsTable extends SupabaseTable<DosingOptionsRow> {
  @override
  String get tableName => 'dosing_options';

  @override
  DosingOptionsRow createRow(Map<String, dynamic> data) =>
      DosingOptionsRow(data);
}

class DosingOptionsRow extends SupabaseDataRow {
  DosingOptionsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => DosingOptionsTable();

  String? get optionType => getField<String>('option_type');
  set optionType(String? value) => setField<String>('option_type', value);

  String? get valueId => getField<String>('value_id');
  set valueId(String? value) => setField<String>('value_id', value);

  String? get value => getField<String>('value');
  set value(String? value) => setField<String>('value', value);

  String? get label => getField<String>('label');
  set label(String? value) => setField<String>('label', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);
}
