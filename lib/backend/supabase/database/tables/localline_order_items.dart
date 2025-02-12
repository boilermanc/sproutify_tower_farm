import '../database.dart';

class LocallineOrderItemsTable extends SupabaseTable<LocallineOrderItemsRow> {
  @override
  String get tableName => 'localline_order_items';

  @override
  LocallineOrderItemsRow createRow(Map<String, dynamic> data) =>
      LocallineOrderItemsRow(data);
}

class LocallineOrderItemsRow extends SupabaseDataRow {
  LocallineOrderItemsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => LocallineOrderItemsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int get orderId => getField<int>('order_id')!;
  set orderId(int value) => setField<int>('order_id', value);

  String get productName => getField<String>('product_name')!;
  set productName(String value) => setField<String>('product_name', value);

  double get pricePerUnit => getField<double>('price_per_unit')!;
  set pricePerUnit(double value) => setField<double>('price_per_unit', value);

  int get quantity => getField<int>('quantity')!;
  set quantity(int value) => setField<int>('quantity', value);

  String? get weight => getField<String>('weight');
  set weight(String? value) => setField<String>('weight', value);

  double get totalPrice => getField<double>('total_price')!;
  set totalPrice(double value) => setField<double>('total_price', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
