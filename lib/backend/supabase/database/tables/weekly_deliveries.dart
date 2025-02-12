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

  int get quantity => getField<int>('quantity')!;
  set quantity(int value) => setField<int>('quantity', value);

  DateTime get deliveryDate => getField<DateTime>('delivery_date')!;
  set deliveryDate(DateTime value) =>
      setField<DateTime>('delivery_date', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  int? get plantId => getField<int>('plant_id');
  set plantId(int? value) => setField<int>('plant_id', value);

  int? get itemId => getField<int>('item_id');
  set itemId(int? value) => setField<int>('item_id', value);

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);
}
