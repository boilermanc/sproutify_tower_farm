import '../database.dart';

class LightDashboardMetricsTable
    extends SupabaseTable<LightDashboardMetricsRow> {
  @override
  String get tableName => 'light_dashboard_metrics';

  @override
  LightDashboardMetricsRow createRow(Map<String, dynamic> data) =>
      LightDashboardMetricsRow(data);
}

class LightDashboardMetricsRow extends SupabaseDataRow {
  LightDashboardMetricsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => LightDashboardMetricsTable();

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);

  String? get farmName => getField<String>('farm_name');
  set farmName(String? value) => setField<String>('farm_name', value);

  int? get activeFixtures => getField<int>('active_fixtures');
  set activeFixtures(int? value) => setField<int>('active_fixtures', value);

  int? get activeZones => getField<int>('active_zones');
  set activeZones(int? value) => setField<int>('active_zones', value);

  String? get zonesIncluded => getField<String>('zones_included');
  set zonesIncluded(String? value) => setField<String>('zones_included', value);

  double? get currentMonthKwh => getField<double>('current_month_kwh');
  set currentMonthKwh(double? value) =>
      setField<double>('current_month_kwh', value);

  double? get energyChangePct => getField<double>('energy_change_pct');
  set energyChangePct(double? value) =>
      setField<double>('energy_change_pct', value);

  bool? get isEnergyIncreasing => getField<bool>('is_energy_increasing');
  set isEnergyIncreasing(bool? value) =>
      setField<bool>('is_energy_increasing', value);

  double? get avgDailyKwh => getField<double>('avg_daily_kwh');
  set avgDailyKwh(double? value) => setField<double>('avg_daily_kwh', value);

  double? get currentMonthCost => getField<double>('current_month_cost');
  set currentMonthCost(double? value) =>
      setField<double>('current_month_cost', value);

  double? get costChangePct => getField<double>('cost_change_pct');
  set costChangePct(double? value) =>
      setField<double>('cost_change_pct', value);

  bool? get isCostIncreasing => getField<bool>('is_cost_increasing');
  set isCostIncreasing(bool? value) =>
      setField<bool>('is_cost_increasing', value);

  double? get costPerKwh => getField<double>('cost_per_kwh');
  set costPerKwh(double? value) => setField<double>('cost_per_kwh', value);

  double? get avgDailyHours => getField<double>('avg_daily_hours');
  set avgDailyHours(double? value) =>
      setField<double>('avg_daily_hours', value);

  double? get peakDailyHours => getField<double>('peak_daily_hours');
  set peakDailyHours(double? value) =>
      setField<double>('peak_daily_hours', value);

  double? get utilizationRatePct => getField<double>('utilization_rate_pct');
  set utilizationRatePct(double? value) =>
      setField<double>('utilization_rate_pct', value);

  double? get currentEfficiency => getField<double>('current_efficiency');
  set currentEfficiency(double? value) =>
      setField<double>('current_efficiency', value);

  DateTime? get reportDate => getField<DateTime>('report_date');
  set reportDate(DateTime? value) => setField<DateTime>('report_date', value);

  DateTime? get currentPeriod => getField<DateTime>('current_period');
  set currentPeriod(DateTime? value) =>
      setField<DateTime>('current_period', value);

  DateTime? get comparisonPeriod => getField<DateTime>('comparison_period');
  set comparisonPeriod(DateTime? value) =>
      setField<DateTime>('comparison_period', value);

  int? get totalFixtures => getField<int>('total_fixtures');
  set totalFixtures(int? value) => setField<int>('total_fixtures', value);

  int? get daysInCurrentPeriod => getField<int>('days_in_current_period');
  set daysInCurrentPeriod(int? value) =>
      setField<int>('days_in_current_period', value);

  int? get daysInPreviousPeriod => getField<int>('days_in_previous_period');
  set daysInPreviousPeriod(int? value) =>
      setField<int>('days_in_previous_period', value);
}
