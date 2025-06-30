import '../database.dart';

class AiPestInsightsTable extends SupabaseTable<AiPestInsightsRow> {
  @override
  String get tableName => 'ai_pest_insights';

  @override
  AiPestInsightsRow createRow(Map<String, dynamic> data) =>
      AiPestInsightsRow(data);
}

class AiPestInsightsRow extends SupabaseDataRow {
  AiPestInsightsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AiPestInsightsTable();

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);

  int? get towerId => getField<int>('tower_id');
  set towerId(int? value) => setField<int>('tower_id', value);

  String? get tableZoneId => getField<String>('table_zone_id');
  set tableZoneId(String? value) => setField<String>('table_zone_id', value);

  String? get locationId => getField<String>('location_id');
  set locationId(String? value) => setField<String>('location_id', value);

  String? get locationCode => getField<String>('location_code');
  set locationCode(String? value) => setField<String>('location_code', value);

  String? get locationName => getField<String>('location_name');
  set locationName(String? value) => setField<String>('location_name', value);

  String? get pestType => getField<String>('pest_type');
  set pestType(String? value) => setField<String>('pest_type', value);

  int? get pests7Days => getField<int>('pests_7_days');
  set pests7Days(int? value) => setField<int>('pests_7_days', value);

  String? get pressureLevel => getField<String>('pressure_level');
  set pressureLevel(String? value) => setField<String>('pressure_level', value);

  String? get trendDirection => getField<String>('trend_direction');
  set trendDirection(String? value) =>
      setField<String>('trend_direction', value);

  double? get weekOverWeekChangePct =>
      getField<double>('week_over_week_change_pct');
  set weekOverWeekChangePct(double? value) =>
      setField<double>('week_over_week_change_pct', value);

  double? get avgConfidence7Days => getField<double>('avg_confidence_7_days');
  set avgConfidence7Days(double? value) =>
      setField<double>('avg_confidence_7_days', value);

  String? get dataQuality => getField<String>('data_quality');
  set dataQuality(String? value) => setField<String>('data_quality', value);

  String? get treatmentRecommendation =>
      getField<String>('treatment_recommendation');
  set treatmentRecommendation(String? value) =>
      setField<String>('treatment_recommendation', value);

  String? get monitoringFrequency => getField<String>('monitoring_frequency');
  set monitoringFrequency(String? value) =>
      setField<String>('monitoring_frequency', value);

  String? get aiConfidenceWarning => getField<String>('ai_confidence_warning');
  set aiConfidenceWarning(String? value) =>
      setField<String>('ai_confidence_warning', value);

  int? get priorityScore => getField<int>('priority_score');
  set priorityScore(int? value) => setField<int>('priority_score', value);

  String? get hotspotFlag => getField<String>('hotspot_flag');
  set hotspotFlag(String? value) => setField<String>('hotspot_flag', value);
}
