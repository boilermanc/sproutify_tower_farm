import '../database.dart';

class SquareInventoryTable extends SupabaseTable<SquareInventoryRow> {
  @override
  String get tableName => 'square_inventory';

  @override
  SquareInventoryRow createRow(Map<String, dynamic> data) =>
      SquareInventoryRow(data);
}

class SquareInventoryRow extends SupabaseDataRow {
  SquareInventoryRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SquareInventoryTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get farmId => getField<String>('farm_id')!;
  set farmId(String value) => setField<String>('farm_id', value);

  String get sku => getField<String>('sku')!;
  set sku(String value) => setField<String>('sku', value);

  String get itemName => getField<String>('item_name')!;
  set itemName(String value) => setField<String>('item_name', value);

  int get quantity => getField<int>('quantity')!;
  set quantity(int value) => setField<int>('quantity', value);

  DateTime? get lastSynced => getField<DateTime>('last_synced');
  set lastSynced(DateTime? value) => setField<DateTime>('last_synced', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);
}
