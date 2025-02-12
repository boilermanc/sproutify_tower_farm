import '../database.dart';

class InvitationsTable extends SupabaseTable<InvitationsRow> {
  @override
  String get tableName => 'invitations';

  @override
  InvitationsRow createRow(Map<String, dynamic> data) => InvitationsRow(data);
}

class InvitationsRow extends SupabaseDataRow {
  InvitationsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => InvitationsTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get email => getField<String>('email')!;
  set email(String value) => setField<String>('email', value);

  String get farmId => getField<String>('farm_id')!;
  set farmId(String value) => setField<String>('farm_id', value);

  String get roleId => getField<String>('role_id')!;
  set roleId(String value) => setField<String>('role_id', value);

  DateTime? get expiresAt => getField<DateTime>('expires_at');
  set expiresAt(DateTime? value) => setField<DateTime>('expires_at', value);

  bool? get used => getField<bool>('used');
  set used(bool? value) => setField<bool>('used', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  String get createdBy => getField<String>('created_by')!;
  set createdBy(String value) => setField<String>('created_by', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);
}
