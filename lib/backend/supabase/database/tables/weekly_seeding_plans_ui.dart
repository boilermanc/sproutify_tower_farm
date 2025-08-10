import '../database.dart';

class WeeklySeedingPlansUiTable extends SupabaseTable<WeeklySeedingPlansUiRow> {
  @override
  String get tableName => 'weekly_seeding_plans_ui';

  @override
  WeeklySeedingPlansUiRow createRow(Map<String, dynamic> data) =>
      WeeklySeedingPlansUiRow(data);
}

class WeeklySeedingPlansUiRow extends SupabaseDataRow {
  WeeklySeedingPlansUiRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => WeeklySeedingPlansUiTable();

  String? get planId => getField<String>('plan_id');
  set planId(String? value) => setField<String>('plan_id', value);

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);

  String? get farmName => getField<String>('farm_name');
  set farmName(String? value) => setField<String>('farm_name', value);

  DateTime? get weekStartDate => getField<DateTime>('week_start_date');
  set weekStartDate(DateTime? value) =>
      setField<DateTime>('week_start_date', value);

  String? get planName => getField<String>('plan_name');
  set planName(String? value) => setField<String>('plan_name', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  int? get totalSheetsNeeded => getField<int>('total_sheets_needed');
  set totalSheetsNeeded(int? value) =>
      setField<int>('total_sheets_needed', value);

  int? get totalRows => getField<int>('total_rows');
  set totalRows(int? value) => setField<int>('total_rows', value);

  int? get totalSeeds => getField<int>('total_seeds');
  set totalSeeds(int? value) => setField<int>('total_seeds', value);

  int? get totalVarieties => getField<int>('total_varieties');
  set totalVarieties(int? value) => setField<int>('total_varieties', value);

  int? get overagePercent => getField<int>('overage_percent');
  set overagePercent(int? value) => setField<int>('overage_percent', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get createdByEmail => getField<String>('created_by_email');
  set createdByEmail(String? value) =>
      setField<String>('created_by_email', value);

  double? get completionPercentage => getField<double>('completion_percentage');
  set completionPercentage(double? value) =>
      setField<double>('completion_percentage', value);

  String? get statusDisplay => getField<String>('status_display');
  set statusDisplay(String? value) => setField<String>('status_display', value);

  String? get statusBgColor => getField<String>('status_bg_color');
  set statusBgColor(String? value) =>
      setField<String>('status_bg_color', value);

  String? get statusTextColor => getField<String>('status_text_color');
  set statusTextColor(String? value) =>
      setField<String>('status_text_color', value);
}
