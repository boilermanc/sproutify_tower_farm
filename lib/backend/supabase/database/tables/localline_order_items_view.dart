import '../database.dart';

class LocallineOrderItemsViewTable
    extends SupabaseTable<LocallineOrderItemsViewRow> {
  @override
  String get tableName => 'localline_order_items_view';

  @override
  LocallineOrderItemsViewRow createRow(Map<String, dynamic> data) =>
      LocallineOrderItemsViewRow(data);
}

class LocallineOrderItemsViewRow extends SupabaseDataRow {
  LocallineOrderItemsViewRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => LocallineOrderItemsViewTable();

  int? get orderId => getField<int>('order_id');
  set orderId(int? value) => setField<int>('order_id', value);

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
}
