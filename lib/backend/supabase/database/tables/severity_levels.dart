import '../database.dart';

class SeverityLevelsTable extends SupabaseTable<SeverityLevelsRow> {
  @override
  String get tableName => 'severity_levels';

  @override
  SeverityLevelsRow createRow(Map<String, dynamic> data) =>
      SeverityLevelsRow(data);
}

class SeverityLevelsRow extends SupabaseDataRow {
  SeverityLevelsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SeverityLevelsTable();

  String get severityId => getField<String>('severity_id')!;
  set severityId(String value) => setField<String>('severity_id', value);

  String get severityLevel => getField<String>('severity_level')!;
  set severityLevel(String value) => setField<String>('severity_level', value);

  String? get severityDescription => getField<String>('severity_description');
  set severityDescription(String? value) =>
      setField<String>('severity_description', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  DateTime get updatedAt => getField<DateTime>('updated_at')!;
  set updatedAt(DateTime value) => setField<DateTime>('updated_at', value);

  String? get managementRecommendations =>
      getField<String>('management_recommendations');
  set managementRecommendations(String? value) =>
      setField<String>('management_recommendations', value);

  String? get severityColor => getField<String>('severity_color');
  set severityColor(String? value) => setField<String>('severity_color', value);

  bool get isActive => getField<bool>('is_active')!;
  set isActive(bool value) => setField<bool>('is_active', value);

  int? get sortOrder => getField<int>('sort_order');
  set sortOrder(int? value) => setField<int>('sort_order', value);
}
