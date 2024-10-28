import '../database.dart';

class MechanicalTypesTable extends SupabaseTable<MechanicalTypesRow> {
  @override
  String get tableName => 'mechanical_types';

  @override
  MechanicalTypesRow createRow(Map<String, dynamic> data) =>
      MechanicalTypesRow(data);
}

class MechanicalTypesRow extends SupabaseDataRow {
  MechanicalTypesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => MechanicalTypesTable();

  String? get colorHex => getField<String>('color_hex');
  set colorHex(String? value) => setField<String>('color_hex', value);

  int get typeId => getField<int>('type_id')!;
  set typeId(int value) => setField<int>('type_id', value);

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  int? get categoryId => getField<int>('category_id');
  set categoryId(int? value) => setField<int>('category_id', value);

  DateTime get dateCreated => getField<DateTime>('date_created')!;
  set dateCreated(DateTime value) => setField<DateTime>('date_created', value);

  DateTime get dateUpdated => getField<DateTime>('date_updated')!;
  set dateUpdated(DateTime value) => setField<DateTime>('date_updated', value);
}
