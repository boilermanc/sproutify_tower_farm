import '../database.dart';

class TowerReservationsTable extends SupabaseTable<TowerReservationsRow> {
  @override
  String get tableName => 'tower_reservations';

  @override
  TowerReservationsRow createRow(Map<String, dynamic> data) =>
      TowerReservationsRow(data);
}

class TowerReservationsRow extends SupabaseDataRow {
  TowerReservationsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TowerReservationsTable();

  int get reservationId => getField<int>('reservation_id')!;
  set reservationId(int value) => setField<int>('reservation_id', value);

  int get towerContentId => getField<int>('tower_content_id')!;
  set towerContentId(int value) => setField<int>('tower_content_id', value);

  int get quantity => getField<int>('quantity')!;
  set quantity(int value) => setField<int>('quantity', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String get status => getField<String>('status')!;
  set status(String value) => setField<String>('status', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);
}
