import '../database.dart';

class HarvestListItemsTable extends SupabaseTable<HarvestListItemsRow> {
  @override
  String get tableName => 'harvest_list_items';

  @override
  HarvestListItemsRow createRow(Map<String, dynamic> data) =>
      HarvestListItemsRow(data);
}

class HarvestListItemsRow extends SupabaseDataRow {
  HarvestListItemsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => HarvestListItemsTable();

  int get itemId => getField<int>('item_id')!;
  set itemId(int value) => setField<int>('item_id', value);

  int get listId => getField<int>('list_id')!;
  set listId(int value) => setField<int>('list_id', value);

  int get allocationId => getField<int>('allocation_id')!;
  set allocationId(int value) => setField<int>('allocation_id', value);

  int get quantity => getField<int>('quantity')!;
  set quantity(int value) => setField<int>('quantity', value);

  int get harvestedQuantity => getField<int>('harvested_quantity')!;
  set harvestedQuantity(int value) =>
      setField<int>('harvested_quantity', value);
}
