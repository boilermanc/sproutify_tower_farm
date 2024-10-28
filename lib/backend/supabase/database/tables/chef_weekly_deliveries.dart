import '../database.dart';

class ChefWeeklyDeliveriesTable extends SupabaseTable<ChefWeeklyDeliveriesRow> {
  @override
  String get tableName => 'chef_weekly_deliveries';

  @override
  ChefWeeklyDeliveriesRow createRow(Map<String, dynamic> data) =>
      ChefWeeklyDeliveriesRow(data);
}

class ChefWeeklyDeliveriesRow extends SupabaseDataRow {
  ChefWeeklyDeliveriesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ChefWeeklyDeliveriesTable();

  int? get deliveryId => getField<int>('delivery_id');
  set deliveryId(int? value) => setField<int>('delivery_id', value);

  String? get customerId => getField<String>('customer_id');
  set customerId(String? value) => setField<String>('customer_id', value);

  String? get customerName => getField<String>('customer_name');
  set customerName(String? value) => setField<String>('customer_name', value);

  int? get growSheetId => getField<int>('grow_sheet_id');
  set growSheetId(int? value) => setField<int>('grow_sheet_id', value);

  String? get plantName => getField<String>('plant_name');
  set plantName(String? value) => setField<String>('plant_name', value);

  int? get quantity => getField<int>('quantity');
  set quantity(int? value) => setField<int>('quantity', value);

  DateTime? get deliveryDate => getField<DateTime>('delivery_date');
  set deliveryDate(DateTime? value) =>
      setField<DateTime>('delivery_date', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);
}
