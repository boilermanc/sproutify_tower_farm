import '../database.dart';

class ControllerCategoriesTable extends SupabaseTable<ControllerCategoriesRow> {
  @override
  String get tableName => 'controller_categories';

  @override
  ControllerCategoriesRow createRow(Map<String, dynamic> data) =>
      ControllerCategoriesRow(data);
}

class ControllerCategoriesRow extends SupabaseDataRow {
  ControllerCategoriesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ControllerCategoriesTable();

  String get categoryId => getField<String>('category_id')!;
  set categoryId(String value) => setField<String>('category_id', value);

  String get controllerType => getField<String>('controller_type')!;
  set controllerType(String value) =>
      setField<String>('controller_type', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);
}
