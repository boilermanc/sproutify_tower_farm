import '../database.dart';

class StickyCardTasksTable extends SupabaseTable<StickyCardTasksRow> {
  @override
  String get tableName => 'sticky_card_tasks';

  @override
  StickyCardTasksRow createRow(Map<String, dynamic> data) =>
      StickyCardTasksRow(data);
}

class StickyCardTasksRow extends SupabaseDataRow {
  StickyCardTasksRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => StickyCardTasksTable();

  String get stickyTaskId => getField<String>('sticky_task_id')!;
  set stickyTaskId(String value) => setField<String>('sticky_task_id', value);

  String get cardId => getField<String>('card_id')!;
  set cardId(String value) => setField<String>('card_id', value);

  int get taskId => getField<int>('task_id')!;
  set taskId(int value) => setField<int>('task_id', value);

  String get taskType => getField<String>('task_type')!;
  set taskType(String value) => setField<String>('task_type', value);

  String? get photoUrl => getField<String>('photo_url');
  set photoUrl(String? value) => setField<String>('photo_url', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
