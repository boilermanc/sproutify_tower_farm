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

  int get listId => getField<int>('list_id')!;
  set listId(int value) => setField<int>('list_id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String get status => getField<String>('status')!;
  set status(String value) => setField<String>('status', value);
}
