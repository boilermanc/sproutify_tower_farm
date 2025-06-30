import '../database.dart';

class MobilePestDashboardTable extends SupabaseTable<MobilePestDashboardRow> {
  @override
  String get tableName => 'mobile_pest_dashboard';

  @override
  MobilePestDashboardRow createRow(Map<String, dynamic> data) =>
      MobilePestDashboardRow(data);
}

class MobilePestDashboardRow extends SupabaseDataRow {
  MobilePestDashboardRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => MobilePestDashboardTable();

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);

  int? get towerId => getField<int>('tower_id');
  set towerId(int? value) => setField<int>('tower_id', value);

  String? get tableZoneId => getField<String>('table_zone_id');
  set tableZoneId(String? value) => setField<String>('table_zone_id', value);

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

  int? get priorityScore => getField<int>('priority_score');
  set priorityScore(int? value) => setField<int>('priority_score', value);

  String? get statusColor => getField<String>('status_color');
  set statusColor(String? value) => setField<String>('status_color', value);

  String? get bgColor => getField<String>('bg_color');
  set bgColor(String? value) => setField<String>('bg_color', value);

  String? get trendIcon => getField<String>('trend_icon');
  set trendIcon(String? value) => setField<String>('trend_icon', value);

  String? get pestIcon => getField<String>('pest_icon');
  set pestIcon(String? value) => setField<String>('pest_icon', value);

  String? get mobileTreatmentRec => getField<String>('mobile_treatment_rec');
  set mobileTreatmentRec(String? value) =>
      setField<String>('mobile_treatment_rec', value);

  String? get monitoringFrequency => getField<String>('monitoring_frequency');
  set monitoringFrequency(String? value) =>
      setField<String>('monitoring_frequency', value);

  String? get aiConfidenceWarning => getField<String>('ai_confidence_warning');
  set aiConfidenceWarning(String? value) =>
      setField<String>('ai_confidence_warning', value);

  String? get hotspotFlag => getField<String>('hotspot_flag');
  set hotspotFlag(String? value) => setField<String>('hotspot_flag', value);

  int? get farmTotalLocations => getField<int>('farm_total_locations');
  set farmTotalLocations(int? value) =>
      setField<int>('farm_total_locations', value);

  int? get farmCriticalLocations => getField<int>('farm_critical_locations');
  set farmCriticalLocations(int? value) =>
      setField<int>('farm_critical_locations', value);

  int? get farmMaxPriority => getField<int>('farm_max_priority');
  set farmMaxPriority(int? value) => setField<int>('farm_max_priority', value);

  int? get locationsInTower => getField<int>('locations_in_tower');
  set locationsInTower(int? value) =>
      setField<int>('locations_in_tower', value);

  int? get towerProblemLocations => getField<int>('tower_problem_locations');
  set towerProblemLocations(int? value) =>
      setField<int>('tower_problem_locations', value);

  int? get towerMaxPriority => getField<int>('tower_max_priority');
  set towerMaxPriority(int? value) =>
      setField<int>('tower_max_priority', value);

  String? get actionPriority => getField<String>('action_priority');
  set actionPriority(String? value) =>
      setField<String>('action_priority', value);

  int? get hoursSinceAnalysis => getField<int>('hours_since_analysis');
  set hoursSinceAnalysis(int? value) =>
      setField<int>('hours_since_analysis', value);
}
