import '../database.dart';

class RestaurantOrdersTable extends SupabaseTable<RestaurantOrdersRow> {
  @override
  String get tableName => 'restaurant_orders';

  @override
  RestaurantOrdersRow createRow(Map<String, dynamic> data) =>
      RestaurantOrdersRow(data);
}

class RestaurantOrdersRow extends SupabaseDataRow {
  RestaurantOrdersRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => RestaurantOrdersTable();

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

  String? get restaurantName => getField<String>('restaurant_name');
  set restaurantName(String? value) =>
      setField<String>('restaurant_name', value);

  String? get customerTypeId => getField<String>('customer_type_id');
  set customerTypeId(String? value) =>
      setField<String>('customer_type_id', value);

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);
}
