import '../database.dart';

class StickyCardsTable extends SupabaseTable<StickyCardsRow> {
  @override
  String get tableName => 'sticky_cards';

  @override
  StickyCardsRow createRow(Map<String, dynamic> data) => StickyCardsRow(data);
}

class StickyCardsRow extends SupabaseDataRow {
  StickyCardsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => StickyCardsTable();

  String get cardId => getField<String>('card_id')!;
  set cardId(String value) => setField<String>('card_id', value);

  String get farmId => getField<String>('farm_id')!;
  set farmId(String value) => setField<String>('farm_id', value);

  String get productTypeId => getField<String>('product_type_id')!;
  set productTypeId(String value) => setField<String>('product_type_id', value);

  String get locationId => getField<String>('location_id')!;
  set locationId(String value) => setField<String>('location_id', value);

  String get deployedBy => getField<String>('deployed_by')!;
  set deployedBy(String value) => setField<String>('deployed_by', value);

  DateTime get deployedAt => getField<DateTime>('deployed_at')!;
  set deployedAt(DateTime value) => setField<DateTime>('deployed_at', value);

  DateTime? get scheduledRefreshDate =>
      getField<DateTime>('scheduled_refresh_date');
  set scheduledRefreshDate(DateTime? value) =>
      setField<DateTime>('scheduled_refresh_date', value);

  int? get checkIntervalDays => getField<int>('check_interval_days');
  set checkIntervalDays(int? value) =>
      setField<int>('check_interval_days', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  String? get notes => getField<String>('notes');
  set notes(String? value) => setField<String>('notes', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
