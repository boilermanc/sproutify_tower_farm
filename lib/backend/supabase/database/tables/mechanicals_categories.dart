import '../database.dart';

class MechanicalsCategoriesTable
    extends SupabaseTable<MechanicalsCategoriesRow> {
  @override
  String get tableName => 'mechanicals_categories';

  @override
  MechanicalsCategoriesRow createRow(Map<String, dynamic> data) =>
      MechanicalsCategoriesRow(data);
}

class MechanicalsCategoriesRow extends SupabaseDataRow {
  MechanicalsCategoriesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => MechanicalsCategoriesTable();

  String? get colorHex => getField<String>('color_hex');
  set colorHex(String? value) => setField<String>('color_hex', value);

  int get categoryId => getField<int>('category_id')!;
  set categoryId(int value) => setField<int>('category_id', value);

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  DateTime get dateCreated => getField<DateTime>('date_created')!;
  set dateCreated(DateTime value) => setField<DateTime>('date_created', value);

  DateTime get dateUpdated => getField<DateTime>('date_updated')!;
  set dateUpdated(DateTime value) => setField<DateTime>('date_updated', value);
}
