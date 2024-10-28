import '../database.dart';

class WeeklyDeliveriesTable extends SupabaseTable<WeeklyDeliveriesRow> {
  @override
  String get tableName => 'weekly_deliveries';

  @override
  WeeklyDeliveriesRow createRow(Map<String, dynamic> data) =>
      WeeklyDeliveriesRow(data);
}

class WeeklyDeliveriesRow extends SupabaseDataRow {
  WeeklyDeliveriesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => WeeklyDeliveriesTable();

  int get deliveryId => getField<int>('delivery_id')!;
  set deliveryId(int value) => setField<int>('delivery_id', value);

  String get customerId => getField<String>('customer_id')!;
  set customerId(String value) => setField<String>('customer_id', value);

  int get growSheetId => getField<int>('grow_sheet_id')!;
  set growSheetId(int value) => setField<int>('grow_sheet_id', value);

  int get quantity => getField<int>('quantity')!;
  set quantity(int value) => setField<int>('quantity', value);

  DateTime get deliveryDate => getField<DateTime>('delivery_date')!;
  set deliveryDate(DateTime value) =>
      setField<DateTime>('delivery_date', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  int get farmId => getField<int>('farm_id')!;
  set farmId(int value) => setField<int>('farm_id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);
}
