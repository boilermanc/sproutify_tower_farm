import '../database.dart';

class HarvestListsTable extends SupabaseTable<HarvestListsRow> {
  @override
  String get tableName => 'harvest_lists';

  @override
  HarvestListsRow createRow(Map<String, dynamic> data) => HarvestListsRow(data);
}

class HarvestListsRow extends SupabaseDataRow {
  HarvestListsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => HarvestListsTable();

  int get harvestListId => getField<int>('harvest_list_id')!;
  set harvestListId(int value) => setField<int>('harvest_list_id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String get status => getField<String>('status')!;
  set status(String value) => setField<String>('status', value);

  String get farmId => getField<String>('farm_id')!;
  set farmId(String value) => setField<String>('farm_id', value);

  DateTime get harvestDate => getField<DateTime>('harvest_date')!;
  set harvestDate(DateTime value) => setField<DateTime>('harvest_date', value);

  String get createdBy => getField<String>('created_by')!;
  set createdBy(String value) => setField<String>('created_by', value);

  String? get notes => getField<String>('notes');
  set notes(String? value) => setField<String>('notes', value);
}
