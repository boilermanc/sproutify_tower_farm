import '../database.dart';

class StickyCardRefreshesTable extends SupabaseTable<StickyCardRefreshesRow> {
  @override
  String get tableName => 'sticky_card_refreshes';

  @override
  StickyCardRefreshesRow createRow(Map<String, dynamic> data) =>
      StickyCardRefreshesRow(data);
}

class StickyCardRefreshesRow extends SupabaseDataRow {
  StickyCardRefreshesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => StickyCardRefreshesTable();

  String get refreshId => getField<String>('refresh_id')!;
  set refreshId(String value) => setField<String>('refresh_id', value);

  String get oldCardId => getField<String>('old_card_id')!;
  set oldCardId(String value) => setField<String>('old_card_id', value);

  String get newCardId => getField<String>('new_card_id')!;
  set newCardId(String value) => setField<String>('new_card_id', value);

  int get taskId => getField<int>('task_id')!;
  set taskId(int value) => setField<int>('task_id', value);

  String get refreshedBy => getField<String>('refreshed_by')!;
  set refreshedBy(String value) => setField<String>('refreshed_by', value);

  DateTime? get refreshedAt => getField<DateTime>('refreshed_at');
  set refreshedAt(DateTime? value) => setField<DateTime>('refreshed_at', value);

  String? get reason => getField<String>('reason');
  set reason(String? value) => setField<String>('reason', value);

  String? get notes => getField<String>('notes');
  set notes(String? value) => setField<String>('notes', value);
}
