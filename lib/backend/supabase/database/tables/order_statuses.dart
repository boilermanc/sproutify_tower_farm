import '../database.dart';

class OrderStatusesTable extends SupabaseTable<OrderStatusesRow> {
  @override
  String get tableName => 'order_statuses';

  @override
  OrderStatusesRow createRow(Map<String, dynamic> data) =>
      OrderStatusesRow(data);
}

class OrderStatusesRow extends SupabaseDataRow {
  OrderStatusesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => OrderStatusesTable();

  int get orderStatusId => getField<int>('order_status_id')!;
  set orderStatusId(int value) => setField<int>('order_status_id', value);

  String get statusCode => getField<String>('status_code')!;
  set statusCode(String value) => setField<String>('status_code', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  String? get backgroundColor => getField<String>('background_color');
  set backgroundColor(String? value) =>
      setField<String>('background_color', value);

  String? get textColor => getField<String>('text_color');
  set textColor(String? value) => setField<String>('text_color', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);
}
