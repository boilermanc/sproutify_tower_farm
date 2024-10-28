import '../database.dart';

class ControlsCategoriesTable extends SupabaseTable<ControlsCategoriesRow> {
  @override
  String get tableName => 'controls_categories';

  @override
  ControlsCategoriesRow createRow(Map<String, dynamic> data) =>
      ControlsCategoriesRow(data);
}

class ControlsCategoriesRow extends SupabaseDataRow {
  ControlsCategoriesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ControlsCategoriesTable();

  int get categoryId => getField<int>('category_id')!;
  set categoryId(int value) => setField<int>('category_id', value);

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);
}
