import '../database.dart';

class ActionsTable extends SupabaseTable<ActionsRow> {
  @override
  String get tableName => 'actions';

  @override
  ActionsRow createRow(Map<String, dynamic> data) => ActionsRow(data);
}

class ActionsRow extends SupabaseDataRow {
  ActionsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ActionsTable();

  int get actionId => getField<int>('action_id')!;
  set actionId(int value) => setField<int>('action_id', value);

  int get actionTypeId => getField<int>('action_type_id')!;
  set actionTypeId(int value) => setField<int>('action_type_id', value);

  int get plantId => getField<int>('plant_id')!;
  set plantId(int value) => setField<int>('plant_id', value);

  int? get towerId => getField<int>('tower_id');
  set towerId(int? value) => setField<int>('tower_id', value);

  int get quantity => getField<int>('quantity')!;
  set quantity(int value) => setField<int>('quantity', value);

  DateTime get actionDate => getField<DateTime>('action_date')!;
  set actionDate(DateTime value) => setField<DateTime>('action_date', value);

  String get userId => getField<String>('user_id')!;
  set userId(String value) => setField<String>('user_id', value);

  String get farmId => getField<String>('farm_id')!;
  set farmId(String value) => setField<String>('farm_id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  DateTime get updatedAt => getField<DateTime>('updated_at')!;
  set updatedAt(DateTime value) => setField<DateTime>('updated_at', value);

  DateTime? get seededDate => getField<DateTime>('seeded_date');
  set seededDate(DateTime? value) => setField<DateTime>('seeded_date', value);

  int? get towerContentId => getField<int>('tower_content_id');
  set towerContentId(int? value) => setField<int>('tower_content_id', value);
}
