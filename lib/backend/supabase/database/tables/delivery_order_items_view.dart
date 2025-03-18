import '../database.dart';

class DeliveryOrderItemsViewTable
    extends SupabaseTable<DeliveryOrderItemsViewRow> {
  @override
  String get tableName => 'delivery_order_items_view';

  @override
  DeliveryOrderItemsViewRow createRow(Map<String, dynamic> data) =>
      DeliveryOrderItemsViewRow(data);
}

class DeliveryOrderItemsViewRow extends SupabaseDataRow {
  DeliveryOrderItemsViewRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => DeliveryOrderItemsViewTable();

  int? get itemId => getField<int>('item_id');
  set itemId(int? value) => setField<int>('item_id', value);

  String? get orderId => getField<String>('order_id');
  set orderId(String? value) => setField<String>('order_id', value);

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);

  String? get orderNumber => getField<String>('order_number');
  set orderNumber(String? value) => setField<String>('order_number', value);

  String? get productName => getField<String>('product_name');
  set productName(String? value) => setField<String>('product_name', value);

  int? get quantity => getField<int>('quantity');
  set quantity(int? value) => setField<int>('quantity', value);

  String? get weight => getField<String>('weight');
  set weight(String? value) => setField<String>('weight', value);

  int? get orderProductStatusId => getField<int>('order_product_status_id');
  set orderProductStatusId(int? value) =>
      setField<int>('order_product_status_id', value);

  String? get itemStatus => getField<String>('item_status');
  set itemStatus(String? value) => setField<String>('item_status', value);

  String? get statusCode => getField<String>('status_code');
  set statusCode(String? value) => setField<String>('status_code', value);

  String? get statusBackgroundColor =>
      getField<String>('status_background_color');
  set statusBackgroundColor(String? value) =>
      setField<String>('status_background_color', value);

  String? get statusTextColor => getField<String>('status_text_color');
  set statusTextColor(String? value) =>
      setField<String>('status_text_color', value);

  bool? get isVerified => getField<bool>('is_verified');
  set isVerified(bool? value) => setField<bool>('is_verified', value);

  String? get verificationNotes => getField<String>('verification_notes');
  set verificationNotes(String? value) =>
      setField<String>('verification_notes', value);
}
