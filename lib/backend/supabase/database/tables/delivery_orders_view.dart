import '../database.dart';

class DeliveryOrdersViewTable extends SupabaseTable<DeliveryOrdersViewRow> {
  @override
  String get tableName => 'delivery_orders_view';

  @override
  DeliveryOrdersViewRow createRow(Map<String, dynamic> data) =>
      DeliveryOrdersViewRow(data);
}

class DeliveryOrdersViewRow extends SupabaseDataRow {
  DeliveryOrdersViewRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => DeliveryOrdersViewTable();

  String? get orderId => getField<String>('order_id');
  set orderId(String? value) => setField<String>('order_id', value);

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);

  String? get orderNumber => getField<String>('order_number');
  set orderNumber(String? value) => setField<String>('order_number', value);

  String? get customerName => getField<String>('customer_name');
  set customerName(String? value) => setField<String>('customer_name', value);

  String? get customerEmail => getField<String>('customer_email');
  set customerEmail(String? value) => setField<String>('customer_email', value);

  String? get customerPhone => getField<String>('customer_phone');
  set customerPhone(String? value) => setField<String>('customer_phone', value);

  String? get fulfillmentAddress => getField<String>('fulfillment_address');
  set fulfillmentAddress(String? value) =>
      setField<String>('fulfillment_address', value);

  DateTime? get fulfillmentDate => getField<DateTime>('fulfillment_date');
  set fulfillmentDate(DateTime? value) =>
      setField<DateTime>('fulfillment_date', value);

  String? get fulfillmentTimeSlot => getField<String>('fulfillment_time_slot');
  set fulfillmentTimeSlot(String? value) =>
      setField<String>('fulfillment_time_slot', value);

  String? get pickupLocation => getField<String>('pickup_location');
  set pickupLocation(String? value) =>
      setField<String>('pickup_location', value);

  int? get orderStatusId => getField<int>('order_status_id');
  set orderStatusId(int? value) => setField<int>('order_status_id', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  int? get totalItems => getField<int>('total_items');
  set totalItems(int? value) => setField<int>('total_items', value);

  int? get packedItems => getField<int>('packed_items');
  set packedItems(int? value) => setField<int>('packed_items', value);

  int? get backorderedItems => getField<int>('backordered_items');
  set backorderedItems(int? value) => setField<int>('backordered_items', value);

  int? get substitutedItems => getField<int>('substituted_items');
  set substitutedItems(int? value) => setField<int>('substituted_items', value);

  int? get missingItems => getField<int>('missing_items');
  set missingItems(int? value) => setField<int>('missing_items', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get deliveryStatus => getField<String>('delivery_status');
  set deliveryStatus(String? value) =>
      setField<String>('delivery_status', value);

  String? get statusBackgroundColor =>
      getField<String>('status_background_color');
  set statusBackgroundColor(String? value) =>
      setField<String>('status_background_color', value);

  String? get statusTextColor => getField<String>('status_text_color');
  set statusTextColor(String? value) =>
      setField<String>('status_text_color', value);

  String? get mapLink => getField<String>('map_link');
  set mapLink(String? value) => setField<String>('map_link', value);
}
