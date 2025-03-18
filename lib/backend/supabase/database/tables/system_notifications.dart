import '../database.dart';

class SystemNotificationsTable extends SupabaseTable<SystemNotificationsRow> {
  @override
  String get tableName => 'system_notifications';

  @override
  SystemNotificationsRow createRow(Map<String, dynamic> data) =>
      SystemNotificationsRow(data);
}

class SystemNotificationsRow extends SupabaseDataRow {
  SystemNotificationsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SystemNotificationsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get notificationType => getField<String>('notification_type')!;
  set notificationType(String value) =>
      setField<String>('notification_type', value);

  String get relatedId => getField<String>('related_id')!;
  set relatedId(String value) => setField<String>('related_id', value);

  String get title => getField<String>('title')!;
  set title(String value) => setField<String>('title', value);

  String get message => getField<String>('message')!;
  set message(String value) => setField<String>('message', value);

  bool? get isRead => getField<bool>('is_read');
  set isRead(bool? value) => setField<bool>('is_read', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
