import '../database.dart';

class TowerContentsTable extends SupabaseTable<TowerContentsRow> {
  @override
  String get tableName => 'tower_contents';

  @override
  TowerContentsRow createRow(Map<String, dynamic> data) =>
      TowerContentsRow(data);
}

class TowerContentsRow extends SupabaseDataRow {
  TowerContentsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TowerContentsTable();

  int get contentId => getField<int>('content_id')!;
  set contentId(int value) => setField<int>('content_id', value);

  int? get towerId => getField<int>('tower_id');
  set towerId(int? value) => setField<int>('tower_id', value);

  int? get plantId => getField<int>('plant_id');
  set plantId(int? value) => setField<int>('plant_id', value);

  DateTime? get seededDate => getField<DateTime>('seeded_date');
  set seededDate(DateTime? value) => setField<DateTime>('seeded_date', value);

  int get totalQuantity => getField<int>('total_quantity')!;
  set totalQuantity(int value) => setField<int>('total_quantity', value);

  int? get availableQuantity => getField<int>('available_quantity');
  set availableQuantity(int? value) =>
      setField<int>('available_quantity', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  int get portsUsed => getField<int>('ports_used')!;
  set portsUsed(int value) => setField<int>('ports_used', value);

  int get reservedQuantity => getField<int>('reserved_quantity')!;
  set reservedQuantity(int value) => setField<int>('reserved_quantity', value);

  bool? get resetAvailableQuantity =>
      getField<bool>('reset_available_quantity');
  set resetAvailableQuantity(bool? value) =>
      setField<bool>('reset_available_quantity', value);

  int get allocatedQuantity => getField<int>('allocated_quantity')!;
  set allocatedQuantity(int value) =>
      setField<int>('allocated_quantity', value);

  DateTime? get lastResetDate => getField<DateTime>('last_reset_date');
  set lastResetDate(DateTime? value) =>
      setField<DateTime>('last_reset_date', value);

  String get status => getField<String>('status')!;
  set status(String value) => setField<String>('status', value);
}
