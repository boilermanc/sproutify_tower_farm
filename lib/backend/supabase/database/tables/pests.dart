import '../database.dart';

class PestsTable extends SupabaseTable<PestsRow> {
  @override
  String get tableName => 'pests';

  @override
  PestsRow createRow(Map<String, dynamic> data) => PestsRow(data);
}

class PestsRow extends SupabaseDataRow {
  PestsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PestsTable();

  String get pestId => getField<String>('pest_id')!;
  set pestId(String value) => setField<String>('pest_id', value);

  String get pestName => getField<String>('pest_name')!;
  set pestName(String value) => setField<String>('pest_name', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  bool? get commonInArea => getField<bool>('common_in_area');
  set commonInArea(bool? value) => setField<bool>('common_in_area', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  DateTime get updatedAt => getField<DateTime>('updated_at')!;
  set updatedAt(DateTime value) => setField<DateTime>('updated_at', value);
}
