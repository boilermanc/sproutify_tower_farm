import '../database.dart';

class WeeklyGrowSheetTable extends SupabaseTable<WeeklyGrowSheetRow> {
  @override
  String get tableName => 'weekly_grow_sheet';

  @override
  WeeklyGrowSheetRow createRow(Map<String, dynamic> data) =>
      WeeklyGrowSheetRow(data);
}

class WeeklyGrowSheetRow extends SupabaseDataRow {
  WeeklyGrowSheetRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => WeeklyGrowSheetTable();

  int get growSheetId => getField<int>('grow_sheet_id')!;
  set growSheetId(int value) => setField<int>('grow_sheet_id', value);

  DateTime get weekStartDate => getField<DateTime>('week_start_date')!;
  set weekStartDate(DateTime value) =>
      setField<DateTime>('week_start_date', value);

  int get contentId => getField<int>('content_id')!;
  set contentId(int value) => setField<int>('content_id', value);

  int get allocatedQuantity => getField<int>('allocated_quantity')!;
  set allocatedQuantity(int value) =>
      setField<int>('allocated_quantity', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  String? get reservedByCustomerId =>
      getField<String>('reserved_by_customer_id');
  set reservedByCustomerId(String? value) =>
      setField<String>('reserved_by_customer_id', value);

  String get farmId => getField<String>('farm_id')!;
  set farmId(String value) => setField<String>('farm_id', value);
}
