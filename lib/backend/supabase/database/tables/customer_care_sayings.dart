import '../database.dart';

class CustomerCareSayingsTable extends SupabaseTable<CustomerCareSayingsRow> {
  @override
  String get tableName => 'customer_care_sayings';

  @override
  CustomerCareSayingsRow createRow(Map<String, dynamic> data) =>
      CustomerCareSayingsRow(data);
}

class CustomerCareSayingsRow extends SupabaseDataRow {
  CustomerCareSayingsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CustomerCareSayingsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get saying => getField<String>('saying')!;
  set saying(String value) => setField<String>('saying', value);

  DateTime get date => getField<DateTime>('date')!;
  set date(DateTime value) => setField<DateTime>('date', value);
}
