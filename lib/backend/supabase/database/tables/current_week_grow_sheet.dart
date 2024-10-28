import '../database.dart';

class CurrentWeekGrowSheetTable extends SupabaseTable<CurrentWeekGrowSheetRow> {
  @override
  String get tableName => 'current_week_grow_sheet';

  @override
  CurrentWeekGrowSheetRow createRow(Map<String, dynamic> data) =>
      CurrentWeekGrowSheetRow(data);
}

class CurrentWeekGrowSheetRow extends SupabaseDataRow {
  CurrentWeekGrowSheetRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CurrentWeekGrowSheetTable();

  int? get growSheetId => getField<int>('grow_sheet_id');
  set growSheetId(int? value) => setField<int>('grow_sheet_id', value);

  DateTime? get weekStartDate => getField<DateTime>('week_start_date');
  set weekStartDate(DateTime? value) =>
      setField<DateTime>('week_start_date', value);

  int? get allocatedQuantity => getField<int>('allocated_quantity');
  set allocatedQuantity(int? value) =>
      setField<int>('allocated_quantity', value);

  String? get reservedByCustomerId =>
      getField<String>('reserved_by_customer_id');
  set reservedByCustomerId(String? value) =>
      setField<String>('reserved_by_customer_id', value);

  String? get customerName => getField<String>('customer_name');
  set customerName(String? value) => setField<String>('customer_name', value);

  int? get plantId => getField<int>('plant_id');
  set plantId(int? value) => setField<int>('plant_id', value);

  String? get plantName => getField<String>('plant_name');
  set plantName(String? value) => setField<String>('plant_name', value);

  int? get towerId => getField<int>('tower_id');
  set towerId(int? value) => setField<int>('tower_id', value);

  String? get towerIdentifier => getField<String>('tower_identifier');
  set towerIdentifier(String? value) =>
      setField<String>('tower_identifier', value);

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);

  int? get availableQuantity => getField<int>('available_quantity');
  set availableQuantity(int? value) =>
      setField<int>('available_quantity', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);
}
