import '../database.dart';

class StickyCardN8nInputTable extends SupabaseTable<StickyCardN8nInputRow> {
  @override
  String get tableName => 'sticky_card_n8n_input';

  @override
  StickyCardN8nInputRow createRow(Map<String, dynamic> data) =>
      StickyCardN8nInputRow(data);
}

class StickyCardN8nInputRow extends SupabaseDataRow {
  StickyCardN8nInputRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => StickyCardN8nInputTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get cardId => getField<String>('card_id')!;
  set cardId(String value) => setField<String>('card_id', value);

  int get pestCount => getField<int>('pest_count')!;
  set pestCount(int value) => setField<int>('pest_count', value);

  DateTime? get analyzedAt => getField<DateTime>('analyzed_at');
  set analyzedAt(DateTime? value) => setField<DateTime>('analyzed_at', value);

  bool? get processed => getField<bool>('processed');
  set processed(bool? value) => setField<bool>('processed', value);

  dynamic? get rawData => getField<dynamic>('raw_data');
  set rawData(dynamic? value) => setField<dynamic>('raw_data', value);
}
