import '../database.dart';

class WeeklyGrowSheetViewTable extends SupabaseTable<WeeklyGrowSheetViewRow> {
  @override
  String get tableName => 'weekly_grow_sheet_view';

  @override
  WeeklyGrowSheetViewRow createRow(Map<String, dynamic> data) =>
      WeeklyGrowSheetViewRow(data);
}

class WeeklyGrowSheetViewRow extends SupabaseDataRow {
  WeeklyGrowSheetViewRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => WeeklyGrowSheetViewTable();

  int? get growSheetId => getField<int>('grow_sheet_id');
  set growSheetId(int? value) => setField<int>('grow_sheet_id', value);

  DateTime? get weekStartDate => getField<DateTime>('week_start_date');
  set weekStartDate(DateTime? value) =>
      setField<DateTime>('week_start_date', value);

  int? get allocatedQuantity => getField<int>('allocated_quantity');
  set allocatedQuantity(int? value) =>
      setField<int>('allocated_quantity', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);

  int? get itemId => getField<int>('item_id');
  set itemId(int? value) => setField<int>('item_id', value);

  int? get plantId => getField<int>('plant_id');
  set plantId(int? value) => setField<int>('plant_id', value);

  String? get plantName => getField<String>('plant_name');
  set plantName(String? value) => setField<String>('plant_name', value);

  String? get customerId => getField<String>('customer_id');
  set customerId(String? value) => setField<String>('customer_id', value);

  String? get customerName => getField<String>('customer_name');
  set customerName(String? value) => setField<String>('customer_name', value);
}
