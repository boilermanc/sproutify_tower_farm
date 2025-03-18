import '../database.dart';

class IracMethodsTable extends SupabaseTable<IracMethodsRow> {
  @override
  String get tableName => 'irac_methods';

  @override
  IracMethodsRow createRow(Map<String, dynamic> data) => IracMethodsRow(data);
}

class IracMethodsRow extends SupabaseDataRow {
  IracMethodsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => IracMethodsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  bool get hasVideo => getField<bool>('has_video')!;
  set hasVideo(bool value) => setField<bool>('has_video', value);

  String? get species => getField<String>('species');
  set species(String? value) => setField<String>('species', value);

  String? get stage => getField<String>('stage');
  set stage(String? value) => setField<String>('stage', value);

  String? get methodology => getField<String>('methodology');
  set methodology(String? value) => setField<String>('methodology', value);
}
