import '../database.dart';

class OrderItemsViewTable extends SupabaseTable<OrderItemsViewRow> {
  @override
  String get tableName => 'order_items_view';

  @override
  OrderItemsViewRow createRow(Map<String, dynamic> data) =>
      OrderItemsViewRow(data);
}

class OrderItemsViewRow extends SupabaseDataRow {
  OrderItemsViewRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => OrderItemsViewTable();

  String? get orderId => getField<String>('order_id');
  set orderId(String? value) => setField<String>('order_id', value);

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);

  int? get itemId => getField<int>('item_id');
  set itemId(int? value) => setField<int>('item_id', value);

  String? get productName => getField<String>('product_name');
  set productName(String? value) => setField<String>('product_name', value);

  double? get pricePerUnit => getField<double>('price_per_unit');
  set pricePerUnit(double? value) => setField<double>('price_per_unit', value);

  int? get quantity => getField<int>('quantity');
  set quantity(int? value) => setField<int>('quantity', value);

  String? get weight => getField<String>('weight');
  set weight(String? value) => setField<String>('weight', value);

  double? get totalPrice => getField<double>('total_price');
  set totalPrice(double? value) => setField<double>('total_price', value);

  String? get productStatus => getField<String>('product_status');
  set productStatus(String? value) => setField<String>('product_status', value);

  String? get productStatusAbbreviation =>
      getField<String>('product_status_abbreviation');
  set productStatusAbbreviation(String? value) =>
      setField<String>('product_status_abbreviation', value);

  String? get productStatusBackgroundColor =>
      getField<String>('product_status_background_color');
  set productStatusBackgroundColor(String? value) =>
      setField<String>('product_status_background_color', value);

  String? get productStatusTextColor =>
      getField<String>('product_status_text_color');
  set productStatusTextColor(String? value) =>
      setField<String>('product_status_text_color', value);

  DateTime? get deliveryDay => getField<DateTime>('delivery_day');
  set deliveryDay(DateTime? value) => setField<DateTime>('delivery_day', value);

  String? get deliveryTime => getField<String>('delivery_time');
  set deliveryTime(String? value) => setField<String>('delivery_time', value);

  String? get vendorName => getField<String>('vendor_name');
  set vendorName(String? value) => setField<String>('vendor_name', value);

  String? get customerName => getField<String>('customer_name');
  set customerName(String? value) => setField<String>('customer_name', value);

  String? get orderStatus => getField<String>('order_status');
  set orderStatus(String? value) => setField<String>('order_status', value);

  String? get orderStatusBackgroundColor =>
      getField<String>('order_status_background_color');
  set orderStatusBackgroundColor(String? value) =>
      setField<String>('order_status_background_color', value);

  String? get orderStatusTextColor =>
      getField<String>('order_status_text_color');
  set orderStatusTextColor(String? value) =>
      setField<String>('order_status_text_color', value);
}
