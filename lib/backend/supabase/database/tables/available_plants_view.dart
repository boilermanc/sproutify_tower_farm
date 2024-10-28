import '../database.dart';

class AvailablePlantsViewTable extends SupabaseTable<AvailablePlantsViewRow> {
  @override
  String get tableName => 'available_plants_view';

  @override
  AvailablePlantsViewRow createRow(Map<String, dynamic> data) =>
      AvailablePlantsViewRow(data);
}

class AvailablePlantsViewRow extends SupabaseDataRow {
  AvailablePlantsViewRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AvailablePlantsViewTable();

  int? get plantId => getField<int>('plant_id');
  set plantId(int? value) => setField<int>('plant_id', value);

  String? get plantName => getField<String>('plant_name');
  set plantName(String? value) => setField<String>('plant_name', value);

  String? get shortDescription => getField<String>('short_description');
  set shortDescription(String? value) =>
      setField<String>('short_description', value);

  int? get totalReservedQuantity => getField<int>('total_reserved_quantity');
  set totalReservedQuantity(int? value) =>
      setField<int>('total_reserved_quantity', value);

  DateTime? get latestReservationDate =>
      getField<DateTime>('latest_reservation_date');
  set latestReservationDate(DateTime? value) =>
      setField<DateTime>('latest_reservation_date', value);

  int? get availableQuantity => getField<int>('available_quantity');
  set availableQuantity(int? value) =>
      setField<int>('available_quantity', value);

  int? get allocatedQuantity => getField<int>('allocated_quantity');
  set allocatedQuantity(int? value) =>
      setField<int>('allocated_quantity', value);

  int? get reservedQuantityContent =>
      getField<int>('reserved_quantity_content');
  set reservedQuantityContent(int? value) =>
      setField<int>('reserved_quantity_content', value);

  DateTime? get seededDate => getField<DateTime>('seeded_date');
  set seededDate(DateTime? value) => setField<DateTime>('seeded_date', value);

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);
}
