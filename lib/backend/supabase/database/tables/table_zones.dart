import '../database.dart';

class TableZonesTable extends SupabaseTable<TableZonesRow> {
  @override
  String get tableName => 'table_zones';

  @override
  TableZonesRow createRow(Map<String, dynamic> data) => TableZonesRow(data);
}

class TableZonesRow extends SupabaseDataRow {
  TableZonesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TableZonesTable();

  String get zoneId => getField<String>('zone_id')!;
  set zoneId(String value) => setField<String>('zone_id', value);

  String get tableId => getField<String>('table_id')!;
  set tableId(String value) => setField<String>('table_id', value);

  int get zoneNumber => getField<int>('zone_number')!;
  set zoneNumber(int value) => setField<int>('zone_number', value);

  String? get zoneName => getField<String>('zone_name');
  set zoneName(String? value) => setField<String>('zone_name', value);

  String get zoneCode => getField<String>('zone_code')!;
  set zoneCode(String value) => setField<String>('zone_code', value);

  double? get coordinatesX => getField<double>('coordinates_x');
  set coordinatesX(double? value) => setField<double>('coordinates_x', value);

  double? get coordinatesY => getField<double>('coordinates_y');
  set coordinatesY(double? value) => setField<double>('coordinates_y', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
