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

  int get harvestListId => getField<int>('harvest_list_id')!;
  set harvestListId(int value) => setField<int>('harvest_list_id', value);

  int? get allocationId => getField<int>('allocation_id');
  set allocationId(int? value) => setField<int>('allocation_id', value);

  int get plannedQuantity => getField<int>('planned_quantity')!;
  set plannedQuantity(int value) => setField<int>('planned_quantity', value);

  int get actualQuantity => getField<int>('actual_quantity')!;
  set actualQuantity(int value) => setField<int>('actual_quantity', value);

  int get plantId => getField<int>('plant_id')!;
  set plantId(int value) => setField<int>('plant_id', value);

  int get towerId => getField<int>('tower_id')!;
  set towerId(int value) => setField<int>('tower_id', value);

  int get actionId => getField<int>('action_id')!;
  set actionId(int value) => setField<int>('action_id', value);

  DateTime? get harvestDate => getField<DateTime>('harvest_date');
  set harvestDate(DateTime? value) => setField<DateTime>('harvest_date', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);
}
