import '../database.dart';

class StandingOrdersTable extends SupabaseTable<StandingOrdersRow> {
  @override
  String get tableName => 'standing_orders';

  @override
  StandingOrdersRow createRow(Map<String, dynamic> data) =>
      StandingOrdersRow(data);
}

class StandingOrdersRow extends SupabaseDataRow {
  StandingOrdersRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => StandingOrdersTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get farmId => getField<String>('farm_id')!;
  set farmId(String value) => setField<String>('farm_id', value);

  int get farmPlantId => getField<int>('farm_plant_id')!;
  set farmPlantId(int value) => setField<int>('farm_plant_id', value);

  String get mediumId => getField<String>('medium_id')!;
  set mediumId(String value) => setField<String>('medium_id', value);

  String get vendorId => getField<String>('vendor_id')!;
  set vendorId(String value) => setField<String>('vendor_id', value);

  String get interval => getField<String>('interval')!;
  set interval(String value) => setField<String>('interval', value);

  int get quantity => getField<int>('quantity')!;
  set quantity(int value) => setField<int>('quantity', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get createdBy => getField<String>('created_by')!;
  set createdBy(String value) => setField<String>('created_by', value);
}
