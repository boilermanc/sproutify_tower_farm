import '../database.dart';

class GrowingTablesTable extends SupabaseTable<GrowingTablesRow> {
  @override
  String get tableName => 'growing_tables';

  @override
  GrowingTablesRow createRow(Map<String, dynamic> data) =>
      GrowingTablesRow(data);
}

class GrowingTablesRow extends SupabaseDataRow {
  GrowingTablesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => GrowingTablesTable();

  String get tableId => getField<String>('table_id')!;
  set tableId(String value) => setField<String>('table_id', value);

  String get farmId => getField<String>('farm_id')!;
  set farmId(String value) => setField<String>('farm_id', value);

  String get tableIdentifier => getField<String>('table_identifier')!;
  set tableIdentifier(String value) =>
      setField<String>('table_identifier', value);

  String? get tableNameField => getField<String>('table_name');
  set tableNameField(String? value) => setField<String>('table_name', value);

  int get rowNumber => getField<int>('row_number')!;
  set rowNumber(int value) => setField<int>('row_number', value);

  int get positionInRow => getField<int>('position_in_row')!;
  set positionInRow(int value) => setField<int>('position_in_row', value);

  double? get dimensionsLength => getField<double>('dimensions_length');
  set dimensionsLength(double? value) =>
      setField<double>('dimensions_length', value);

  double? get dimensionsWidth => getField<double>('dimensions_width');
  set dimensionsWidth(double? value) =>
      setField<double>('dimensions_width', value);

  bool? get isActive => getField<bool>('is_active');
  set isActive(bool? value) => setField<bool>('is_active', value);

  String? get notes => getField<String>('notes');
  set notes(String? value) => setField<String>('notes', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
