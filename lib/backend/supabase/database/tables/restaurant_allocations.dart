import '../database.dart';

class RestaurantAllocationsTable
    extends SupabaseTable<RestaurantAllocationsRow> {
  @override
  String get tableName => 'restaurant_allocations';

  @override
  RestaurantAllocationsRow createRow(Map<String, dynamic> data) =>
      RestaurantAllocationsRow(data);
}

class RestaurantAllocationsRow extends SupabaseDataRow {
  RestaurantAllocationsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => RestaurantAllocationsTable();

  int? get growSheetId => getField<int>('grow_sheet_id');
  set growSheetId(int? value) => setField<int>('grow_sheet_id', value);

  DateTime? get weekStartDate => getField<DateTime>('week_start_date');
  set weekStartDate(DateTime? value) =>
      setField<DateTime>('week_start_date', value);

  int? get contentId => getField<int>('content_id');
  set contentId(int? value) => setField<int>('content_id', value);

  String? get plantName => getField<String>('plant_name');
  set plantName(String? value) => setField<String>('plant_name', value);

  int? get restaurantAllocatedQuantity =>
      getField<int>('restaurant_allocated_quantity');
  set restaurantAllocatedQuantity(int? value) =>
      setField<int>('restaurant_allocated_quantity', value);

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);
}
