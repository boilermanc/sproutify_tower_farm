import '../database.dart';

class UnitsTable extends SupabaseTable<UnitsRow> {
  @override
  String get tableName => 'units';

  @override
  UnitsRow createRow(Map<String, dynamic> data) => UnitsRow(data);
}

class UnitsRow extends SupabaseDataRow {
  UnitsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UnitsTable();

  String get unitId => getField<String>('unit_id')!;
  set unitId(String value) => setField<String>('unit_id', value);

  String get unitName => getField<String>('unit_name')!;
  set unitName(String value) => setField<String>('unit_name', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  DateTime get updatedAt => getField<DateTime>('updated_at')!;
  set updatedAt(DateTime value) => setField<DateTime>('updated_at', value);

  String? get systemType => getField<String>('system_type');
  set systemType(String? value) => setField<String>('system_type', value);
}
