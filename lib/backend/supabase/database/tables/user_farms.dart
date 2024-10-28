import '../database.dart';

class UserFarmsTable extends SupabaseTable<UserFarmsRow> {
  @override
  String get tableName => 'user_farms';

  @override
  UserFarmsRow createRow(Map<String, dynamic> data) => UserFarmsRow(data);
}

class UserFarmsRow extends SupabaseDataRow {
  UserFarmsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UserFarmsTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);
}
