import '../database.dart';

class RoleCategoriesTable extends SupabaseTable<RoleCategoriesRow> {
  @override
  String get tableName => 'role_categories';

  @override
  RoleCategoriesRow createRow(Map<String, dynamic> data) =>
      RoleCategoriesRow(data);
}

class RoleCategoriesRow extends SupabaseDataRow {
  RoleCategoriesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => RoleCategoriesTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);

  String get category => getField<String>('category')!;
  set category(String value) => setField<String>('category', value);

  String get type => getField<String>('type')!;
  set type(String value) => setField<String>('type', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);
}
