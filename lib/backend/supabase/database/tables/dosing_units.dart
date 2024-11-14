import '../database.dart';

class DosingUnitsTable extends SupabaseTable<DosingUnitsRow> {
  @override
  String get tableName => 'dosing_units';

  @override
  DosingUnitsRow createRow(Map<String, dynamic> data) => DosingUnitsRow(data);
}

class DosingUnitsRow extends SupabaseDataRow {
  DosingUnitsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => DosingUnitsTable();

  String get unitId => getField<String>('unit_id')!;
  set unitId(String value) => setField<String>('unit_id', value);

  String get unitName => getField<String>('unit_name')!;
  set unitName(String value) => setField<String>('unit_name', value);

  String get unitSymbol => getField<String>('unit_symbol')!;
  set unitSymbol(String value) => setField<String>('unit_symbol', value);

  String get unitType => getField<String>('unit_type')!;
  set unitType(String value) => setField<String>('unit_type', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  DateTime get updatedAt => getField<DateTime>('updated_at')!;
  set updatedAt(DateTime value) => setField<DateTime>('updated_at', value);

  String get unitSystem => getField<String>('unit_system')!;
  set unitSystem(String value) => setField<String>('unit_system', value);

  int get sortOrder => getField<int>('sort_order')!;
  set sortOrder(int value) => setField<int>('sort_order', value);
}
