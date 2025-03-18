import '../database.dart';

class DeliveryVerificationsTable
    extends SupabaseTable<DeliveryVerificationsRow> {
  @override
  String get tableName => 'delivery_verifications';

  @override
  DeliveryVerificationsRow createRow(Map<String, dynamic> data) =>
      DeliveryVerificationsRow(data);
}

class DeliveryVerificationsRow extends SupabaseDataRow {
  DeliveryVerificationsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => DeliveryVerificationsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get orderId => getField<String>('order_id')!;
  set orderId(String value) => setField<String>('order_id', value);

  int get itemId => getField<int>('item_id')!;
  set itemId(int value) => setField<int>('item_id', value);

  DateTime? get verifiedAt => getField<DateTime>('verified_at');
  set verifiedAt(DateTime? value) => setField<DateTime>('verified_at', value);

  String? get verifiedBy => getField<String>('verified_by');
  set verifiedBy(String? value) => setField<String>('verified_by', value);

  String? get notes => getField<String>('notes');
  set notes(String? value) => setField<String>('notes', value);
}
