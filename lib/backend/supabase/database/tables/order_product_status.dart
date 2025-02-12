import '../database.dart';

class OrderProductStatusTable extends SupabaseTable<OrderProductStatusRow> {
  @override
  String get tableName => 'order_product_status';

  @override
  OrderProductStatusRow createRow(Map<String, dynamic> data) =>
      OrderProductStatusRow(data);
}

class OrderProductStatusRow extends SupabaseDataRow {
  OrderProductStatusRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => OrderProductStatusTable();

  int get orderProductStatusId => getField<int>('order_product_status_id')!;
  set orderProductStatusId(int value) =>
      setField<int>('order_product_status_id', value);

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

  String? get abbreviationCode => getField<String>('abbreviation_code');
  set abbreviationCode(String? value) =>
      setField<String>('abbreviation_code', value);
}
