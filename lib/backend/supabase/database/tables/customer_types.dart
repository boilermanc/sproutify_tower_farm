import '../database.dart';

class CustomerTypesTable extends SupabaseTable<CustomerTypesRow> {
  @override
  String get tableName => 'customer_types';

  @override
  CustomerTypesRow createRow(Map<String, dynamic> data) =>
      CustomerTypesRow(data);
}

class CustomerTypesRow extends SupabaseDataRow {
  CustomerTypesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CustomerTypesTable();

  String get typeId => getField<String>('type_id')!;
  set typeId(String value) => setField<String>('type_id', value);

  String get typeName => getField<String>('type_name')!;
  set typeName(String value) => setField<String>('type_name', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  DateTime get updatedAt => getField<DateTime>('updated_at')!;
  set updatedAt(DateTime value) => setField<DateTime>('updated_at', value);
}
