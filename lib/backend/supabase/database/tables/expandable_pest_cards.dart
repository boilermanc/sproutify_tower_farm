import '../database.dart';

class ExpandablePestCardsTable extends SupabaseTable<ExpandablePestCardsRow> {
  @override
  String get tableName => 'expandable_pest_cards';

  @override
  ExpandablePestCardsRow createRow(Map<String, dynamic> data) =>
      ExpandablePestCardsRow(data);
}

class ExpandablePestCardsRow extends SupabaseDataRow {
  ExpandablePestCardsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ExpandablePestCardsTable();

  String? get cardId => getField<String>('card_id');
  set cardId(String? value) => setField<String>('card_id', value);

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);

  String? get locationCode => getField<String>('location_code');
  set locationCode(String? value) => setField<String>('location_code', value);

  String? get locationName => getField<String>('location_name');
  set locationName(String? value) => setField<String>('location_name', value);

  String? get cardType => getField<String>('card_type');
  set cardType(String? value) => setField<String>('card_type', value);

  double? get daysDeployed => getField<double>('days_deployed');
  set daysDeployed(double? value) => setField<double>('days_deployed', value);

  int? get pestCount => getField<int>('pest_count');
  set pestCount(int? value) => setField<int>('pest_count', value);

  String? get priorityLevel => getField<String>('priority_level');
  set priorityLevel(String? value) => setField<String>('priority_level', value);

  String? get pestCountColor => getField<String>('pest_count_color');
  set pestCountColor(String? value) =>
      setField<String>('pest_count_color', value);

  bool? get showPriorityBadge => getField<bool>('show_priority_badge');
  set showPriorityBadge(bool? value) =>
      setField<bool>('show_priority_badge', value);

  bool? get showLeftBorder => getField<bool>('show_left_border');
  set showLeftBorder(bool? value) => setField<bool>('show_left_border', value);

  DateTime? get lastAnalysisDate => getField<DateTime>('last_analysis_date');
  set lastAnalysisDate(DateTime? value) =>
      setField<DateTime>('last_analysis_date', value);

  String? get lastAnalysisFormatted =>
      getField<String>('last_analysis_formatted');
  set lastAnalysisFormatted(String? value) =>
      setField<String>('last_analysis_formatted', value);

  int? get checkIntervalDays => getField<int>('check_interval_days');
  set checkIntervalDays(int? value) =>
      setField<int>('check_interval_days', value);

  DateTime? get scheduledRefreshDate =>
      getField<DateTime>('scheduled_refresh_date');
  set scheduledRefreshDate(DateTime? value) =>
      setField<DateTime>('scheduled_refresh_date', value);

  String? get refreshDateFormatted =>
      getField<String>('refresh_date_formatted');
  set refreshDateFormatted(String? value) =>
      setField<String>('refresh_date_formatted', value);

  bool? get refreshOverdue => getField<bool>('refresh_overdue');
  set refreshOverdue(bool? value) => setField<bool>('refresh_overdue', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  String? get treatmentRecommendation =>
      getField<String>('treatment_recommendation');
  set treatmentRecommendation(String? value) =>
      setField<String>('treatment_recommendation', value);

  bool? get showTreatmentNote => getField<bool>('show_treatment_note');
  set showTreatmentNote(bool? value) =>
      setField<bool>('show_treatment_note', value);

  double? get aiConfidencePercent => getField<double>('ai_confidence_percent');
  set aiConfidencePercent(double? value) =>
      setField<double>('ai_confidence_percent', value);

  int? get priorityScore => getField<int>('priority_score');
  set priorityScore(int? value) => setField<int>('priority_score', value);

  int? get previousWeekPests => getField<int>('previous_week_pests');
  set previousWeekPests(int? value) =>
      setField<int>('previous_week_pests', value);

  String? get historicalNote => getField<String>('historical_note');
  set historicalNote(String? value) =>
      setField<String>('historical_note', value);

  bool? get showSuccessStory => getField<bool>('show_success_story');
  set showSuccessStory(bool? value) =>
      setField<bool>('show_success_story', value);

  String? get detectedPestTypes => getField<String>('detected_pest_types');
  set detectedPestTypes(String? value) =>
      setField<String>('detected_pest_types', value);
}
