import '../database.dart';

class IracModesOfActionTable extends SupabaseTable<IracModesOfActionRow> {
  @override
  String get tableName => 'irac_modes_of_action';

  @override
  IracModesOfActionRow createRow(Map<String, dynamic> data) =>
      IracModesOfActionRow(data);
}

class IracModesOfActionRow extends SupabaseDataRow {
  IracModesOfActionRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => IracModesOfActionTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int get methodId => getField<int>('method_id')!;
  set methodId(int value) => setField<int>('method_id', value);

  String get modeOfAction => getField<String>('mode_of_action')!;
  set modeOfAction(String value) => setField<String>('mode_of_action', value);
}
