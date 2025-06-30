import '../database.dart';

class StickyCardsFarmSummaryTable
    extends SupabaseTable<StickyCardsFarmSummaryRow> {
  @override
  String get tableName => 'sticky_cards_farm_summary';

  @override
  StickyCardsFarmSummaryRow createRow(Map<String, dynamic> data) =>
      StickyCardsFarmSummaryRow(data);
}

class StickyCardsFarmSummaryRow extends SupabaseDataRow {
  StickyCardsFarmSummaryRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => StickyCardsFarmSummaryTable();

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);

  int? get totalActiveCards => getField<int>('total_active_cards');
  set totalActiveCards(int? value) =>
      setField<int>('total_active_cards', value);

  int? get normalCards => getField<int>('normal_cards');
  set normalCards(int? value) => setField<int>('normal_cards', value);

  int? get cardsNeedRefresh => getField<int>('cards_need_refresh');
  set cardsNeedRefresh(int? value) =>
      setField<int>('cards_need_refresh', value);

  int? get cardsOverdueCheck => getField<int>('cards_overdue_check');
  set cardsOverdueCheck(int? value) =>
      setField<int>('cards_overdue_check', value);

  int? get cardsHighActivity => getField<int>('cards_high_activity');
  set cardsHighActivity(int? value) =>
      setField<int>('cards_high_activity', value);
}
