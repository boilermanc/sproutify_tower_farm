import '../database.dart';

class OrderDashboardViewTable extends SupabaseTable<OrderDashboardViewRow> {
  @override
  String get tableName => 'order_dashboard_view';

  @override
  OrderDashboardViewRow createRow(Map<String, dynamic> data) =>
      OrderDashboardViewRow(data);
}

class OrderDashboardViewRow extends SupabaseDataRow {
  OrderDashboardViewRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => OrderDashboardViewTable();

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);

  int? get newOrders => getField<int>('new_orders');
  set newOrders(int? value) => setField<int>('new_orders', value);

  int? get scheduledOrders => getField<int>('scheduled_orders');
  set scheduledOrders(int? value) => setField<int>('scheduled_orders', value);

  int? get deliveredOrders => getField<int>('delivered_orders');
  set deliveredOrders(int? value) => setField<int>('delivered_orders', value);

  int? get packedOrders => getField<int>('packed_orders');
  set packedOrders(int? value) => setField<int>('packed_orders', value);

  int? get fulfilledOrders => getField<int>('fulfilled_orders');
  set fulfilledOrders(int? value) => setField<int>('fulfilled_orders', value);

  int? get completedOrders => getField<int>('completed_orders');
  set completedOrders(int? value) => setField<int>('completed_orders', value);

  int? get readyForDeliveryOrders => getField<int>('ready_for_delivery_orders');
  set readyForDeliveryOrders(int? value) =>
      setField<int>('ready_for_delivery_orders', value);

  int? get outForDeliveryOrders => getField<int>('out_for_delivery_orders');
  set outForDeliveryOrders(int? value) =>
      setField<int>('out_for_delivery_orders', value);

  int? get cannotFulfillOrders => getField<int>('cannot_fulfill_orders');
  set cannotFulfillOrders(int? value) =>
      setField<int>('cannot_fulfill_orders', value);

  int? get totalOrders => getField<int>('total_orders');
  set totalOrders(int? value) => setField<int>('total_orders', value);
}
