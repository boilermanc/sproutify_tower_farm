import '../database.dart';

class LightUsageSummaryTable extends SupabaseTable<LightUsageSummaryRow> {
  @override
  String get tableName => 'light_usage_summary';

  @override
  LightUsageSummaryRow createRow(Map<String, dynamic> data) =>
      LightUsageSummaryRow(data);
}

class LightUsageSummaryRow extends SupabaseDataRow {
  LightUsageSummaryRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => LightUsageSummaryTable();

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);

  String? get zoneId => getField<String>('zone_id');
  set zoneId(String? value) => setField<String>('zone_id', value);

  String? get zoneName => getField<String>('zone_name');
  set zoneName(String? value) => setField<String>('zone_name', value);

  double? get totalUsageHours => getField<double>('total_usage_hours');
  set totalUsageHours(double? value) =>
      setField<double>('total_usage_hours', value);

  double? get totalEnergyUsed => getField<double>('total_energy_used');
  set totalEnergyUsed(double? value) =>
      setField<double>('total_energy_used', value);

  double? get totalCost => getField<double>('total_cost');
  set totalCost(double? value) => setField<double>('total_cost', value);

  DateTime? get latestPeriodEnd => getField<DateTime>('latest_period_end');
  set latestPeriodEnd(DateTime? value) =>
      setField<DateTime>('latest_period_end', value);

  DateTime? get earliestPeriodStart =>
      getField<DateTime>('earliest_period_start');
  set earliestPeriodStart(DateTime? value) =>
      setField<DateTime>('earliest_period_start', value);

  bool? get isAllZones => getField<bool>('is_all_zones');
  set isAllZones(bool? value) => setField<bool>('is_all_zones', value);

  int? get daysActive => getField<int>('days_active');
  set daysActive(int? value) => setField<int>('days_active', value);

  double? get avgDailyHours => getField<double>('avg_daily_hours');
  set avgDailyHours(double? value) =>
      setField<double>('avg_daily_hours', value);

  double? get avgDailyEnergy => getField<double>('avg_daily_energy');
  set avgDailyEnergy(double? value) =>
      setField<double>('avg_daily_energy', value);

  double? get avgDailyCost => getField<double>('avg_daily_cost');
  set avgDailyCost(double? value) => setField<double>('avg_daily_cost', value);

  double? get costPerKwh => getField<double>('cost_per_kwh');
  set costPerKwh(double? value) => setField<double>('cost_per_kwh', value);

  double? get kwhPerHour => getField<double>('kwh_per_hour');
  set kwhPerHour(double? value) => setField<double>('kwh_per_hour', value);

  double? get energyUsageRange => getField<double>('energy_usage_range');
  set energyUsageRange(double? value) =>
      setField<double>('energy_usage_range', value);

  double? get energyUsageStddev => getField<double>('energy_usage_stddev');
  set energyUsageStddev(double? value) =>
      setField<double>('energy_usage_stddev', value);

  double? get peakDailyHours => getField<double>('peak_daily_hours');
  set peakDailyHours(double? value) =>
      setField<double>('peak_daily_hours', value);

  double? get peakDailyEnergy => getField<double>('peak_daily_energy');
  set peakDailyEnergy(double? value) =>
      setField<double>('peak_daily_energy', value);

  double? get peakDailyCost => getField<double>('peak_daily_cost');
  set peakDailyCost(double? value) =>
      setField<double>('peak_daily_cost', value);

  double? get last7DaysAvgEnergy => getField<double>('last_7_days_avg_energy');
  set last7DaysAvgEnergy(double? value) =>
      setField<double>('last_7_days_avg_energy', value);

  double? get utilizationRate => getField<double>('utilization_rate');
  set utilizationRate(double? value) =>
      setField<double>('utilization_rate', value);
}
