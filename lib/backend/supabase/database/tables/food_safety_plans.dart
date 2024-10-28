import '../database.dart';

class FoodSafetyPlansTable extends SupabaseTable<FoodSafetyPlansRow> {
  @override
  String get tableName => 'food_safety_plans';

  @override
  FoodSafetyPlansRow createRow(Map<String, dynamic> data) =>
      FoodSafetyPlansRow(data);
}

class FoodSafetyPlansRow extends SupabaseDataRow {
  FoodSafetyPlansRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => FoodSafetyPlansTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get farmId => getField<String>('farm_id')!;
  set farmId(String value) => setField<String>('farm_id', value);

  String get missionStatement => getField<String>('mission_statement')!;
  set missionStatement(String value) =>
      setField<String>('mission_statement', value);

  String get goal => getField<String>('goal')!;
  set goal(String value) => setField<String>('goal', value);

  String get records => getField<String>('records')!;
  set records(String value) => setField<String>('records', value);

  String get disciplinaryPolicy => getField<String>('disciplinary_policy')!;
  set disciplinaryPolicy(String value) =>
      setField<String>('disciplinary_policy', value);

  String get foodSafetyOfficerId => getField<String>('food_safety_officer_id')!;
  set foodSafetyOfficerId(String value) =>
      setField<String>('food_safety_officer_id', value);

  String? get alternateContactId => getField<String>('alternate_contact_id');
  set alternateContactId(String? value) =>
      setField<String>('alternate_contact_id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  DateTime get updatedAt => getField<DateTime>('updated_at')!;
  set updatedAt(DateTime value) => setField<DateTime>('updated_at', value);
}
