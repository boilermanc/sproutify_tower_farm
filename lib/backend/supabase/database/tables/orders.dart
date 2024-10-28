import '../database.dart';

class OrdersTable extends SupabaseTable<OrdersRow> {
  @override
  String get tableName => 'orders';

  @override
  OrdersRow createRow(Map<String, dynamic> data) => OrdersRow(data);
}

class OrdersRow extends SupabaseDataRow {
  OrdersRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => OrdersTable();

  int? get growSheetId => getField<int>('grow_sheet_id');
  set growSheetId(int? value) => setField<int>('grow_sheet_id', value);

  DateTime? get weekStartDate => getField<DateTime>('week_start_date');
  set weekStartDate(DateTime? value) =>
      setField<DateTime>('week_start_date', value);

  int? get contentId => getField<int>('content_id');
  set contentId(int? value) => setField<int>('content_id', value);

  String? get plantName => getField<String>('plant_name');
  set plantName(String? value) => setField<String>('plant_name', value);

  int? get availableQuantity => getField<int>('available_quantity');
  set availableQuantity(int? value) =>
      setField<int>('available_quantity', value);

  int? get orderedQuantity => getField<int>('ordered_quantity');
  set orderedQuantity(int? value) => setField<int>('ordered_quantity', value);

  String? get customerName => getField<String>('customer_name');
  set customerName(String? value) => setField<String>('customer_name', value);

  String? get customerType => getField<String>('customer_type');
  set customerType(String? value) => setField<String>('customer_type', value);

  String? get farmName => getField<String>('farm_name');
  set farmName(String? value) => setField<String>('farm_name', value);
}
