import '../database.dart';

class LocallineOrderHeadersTable
    extends SupabaseTable<LocallineOrderHeadersRow> {
  @override
  String get tableName => 'localline_order_headers';

  @override
  LocallineOrderHeadersRow createRow(Map<String, dynamic> data) =>
      LocallineOrderHeadersRow(data);
}

class LocallineOrderHeadersRow extends SupabaseDataRow {
  LocallineOrderHeadersRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => LocallineOrderHeadersTable();

  int? get orderId => getField<int>('order_id');
  set orderId(int? value) => setField<int>('order_id', value);

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

  String? get orderType => getField<String>('order_type');
  set orderType(String? value) => setField<String>('order_type', value);

  double? get orderTotal => getField<double>('order_total');
  set orderTotal(double? value) => setField<double>('order_total', value);

  String? get paymentStatus => getField<String>('payment_status');
  set paymentStatus(String? value) => setField<String>('payment_status', value);

  String? get paymentMethod => getField<String>('payment_method');
  set paymentMethod(String? value) => setField<String>('payment_method', value);

  String? get fulfillmentType => getField<String>('fulfillment_type');
  set fulfillmentType(String? value) =>
      setField<String>('fulfillment_type', value);

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

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  bool? get isLocalline => getField<bool>('is_localline');
  set isLocalline(bool? value) => setField<bool>('is_localline', value);

  String? get statusBackgroundColor =>
      getField<String>('status_background_color');
  set statusBackgroundColor(String? value) =>
      setField<String>('status_background_color', value);

  String? get statusTextColor => getField<String>('status_text_color');
  set statusTextColor(String? value) =>
      setField<String>('status_text_color', value);

  String? get typeColor => getField<String>('type_color');
  set typeColor(String? value) => setField<String>('type_color', value);

  String? get typeBackgroundColor => getField<String>('type_background_color');
  set typeBackgroundColor(String? value) =>
      setField<String>('type_background_color', value);

  String? get llColor => getField<String>('ll_color');
  set llColor(String? value) => setField<String>('ll_color', value);

  String? get llBackgroundColor => getField<String>('ll_background_color');
  set llBackgroundColor(String? value) =>
      setField<String>('ll_background_color', value);

  String? get paymentColor => getField<String>('payment_color');
  set paymentColor(String? value) => setField<String>('payment_color', value);
}
