import '../database.dart';

class ActionRelationshipsTable extends SupabaseTable<ActionRelationshipsRow> {
  @override
  String get tableName => 'action_relationships';

  @override
  ActionRelationshipsRow createRow(Map<String, dynamic> data) =>
      ActionRelationshipsRow(data);
}

class ActionRelationshipsRow extends SupabaseDataRow {
  ActionRelationshipsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ActionRelationshipsTable();

  int get relationshipId => getField<int>('relationship_id')!;
  set relationshipId(int value) => setField<int>('relationship_id', value);

  int get originalActionId => getField<int>('original_action_id')!;
  set originalActionId(int value) => setField<int>('original_action_id', value);

  int get relatedActionId => getField<int>('related_action_id')!;
  set relatedActionId(int value) => setField<int>('related_action_id', value);

  String get relationshipType => getField<String>('relationship_type')!;
  set relationshipType(String value) =>
      setField<String>('relationship_type', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
