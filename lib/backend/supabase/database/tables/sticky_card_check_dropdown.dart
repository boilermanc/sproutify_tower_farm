import '../database.dart';

class StickyCardCheckDropdownTable
    extends SupabaseTable<StickyCardCheckDropdownRow> {
  @override
  String get tableName => 'sticky_card_check_dropdown';

  @override
  StickyCardCheckDropdownRow createRow(Map<String, dynamic> data) =>
      StickyCardCheckDropdownRow(data);
}

class StickyCardCheckDropdownRow extends SupabaseDataRow {
  StickyCardCheckDropdownRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => StickyCardCheckDropdownTable();

  String? get cardId => getField<String>('card_id');
  set cardId(String? value) => setField<String>('card_id', value);

  int? get taskId => getField<int>('task_id');
  set taskId(int? value) => setField<int>('task_id', value);

  String? get locationCode => getField<String>('location_code');
  set locationCode(String? value) => setField<String>('location_code', value);

  String? get locationName => getField<String>('location_name');
  set locationName(String? value) => setField<String>('location_name', value);

  String? get displayText => getField<String>('display_text');
  set displayText(String? value) => setField<String>('display_text', value);

  String? get cardType => getField<String>('card_type');
  set cardType(String? value) => setField<String>('card_type', value);

  DateTime? get dueDate => getField<DateTime>('due_date');
  set dueDate(DateTime? value) => setField<DateTime>('due_date', value);

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);

  String? get urgency => getField<String>('urgency');
  set urgency(String? value) => setField<String>('urgency', value);
}
