import '../database.dart';

class LightZoneUsageSummaryTable
    extends SupabaseTable<LightZoneUsageSummaryRow> {
  @override
  String get tableName => 'light_zone_usage_summary';

  @override
  LightZoneUsageSummaryRow createRow(Map<String, dynamic> data) =>
      LightZoneUsageSummaryRow(data);
}

class LightZoneUsageSummaryRow extends SupabaseDataRow {
  LightZoneUsageSummaryRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => LightZoneUsageSummaryTable();

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);

  String? get zoneId => getField<String>('zone_id');
  set zoneId(String? value) => setField<String>('zone_id', value);

  String? get zoneName => getField<String>('zone_name');
  set zoneName(String? value) => setField<String>('zone_name', value);

  DateTime? get periodDay => getField<DateTime>('period_day');
  set periodDay(DateTime? value) => setField<DateTime>('period_day', value);

  DateTime? get periodWeek => getField<DateTime>('period_week');
  set periodWeek(DateTime? value) => setField<DateTime>('period_week', value);

  DateTime? get periodMonth => getField<DateTime>('period_month');
  set periodMonth(DateTime? value) => setField<DateTime>('period_month', value);

  DateTime? get periodQuarter => getField<DateTime>('period_quarter');
  set periodQuarter(DateTime? value) =>
      setField<DateTime>('period_quarter', value);

  DateTime? get periodYear => getField<DateTime>('period_year');
  set periodYear(DateTime? value) => setField<DateTime>('period_year', value);

  double? get totalUsageHours => getField<double>('total_usage_hours');
  set totalUsageHours(double? value) =>
      setField<double>('total_usage_hours', value);

  double? get totalEnergyUsedKwh => getField<double>('total_energy_used_kwh');
  set totalEnergyUsedKwh(double? value) =>
      setField<double>('total_energy_used_kwh', value);

  double? get totalCost => getField<double>('total_cost');
  set totalCost(double? value) => setField<double>('total_cost', value);

  int? get numberOfRecords => getField<int>('number_of_records');
  set numberOfRecords(int? value) => setField<int>('number_of_records', value);

  DateTime? get earliestPeriodStart =>
      getField<DateTime>('earliest_period_start');
  set earliestPeriodStart(DateTime? value) =>
      setField<DateTime>('earliest_period_start', value);

  DateTime? get latestPeriodEnd => getField<DateTime>('latest_period_end');
  set latestPeriodEnd(DateTime? value) =>
      setField<DateTime>('latest_period_end', value);

  double? get kwhPerHour => getField<double>('kwh_per_hour');
  set kwhPerHour(double? value) => setField<double>('kwh_per_hour', value);

  double? get costPerKwh => getField<double>('cost_per_kwh');
  set costPerKwh(double? value) => setField<double>('cost_per_kwh', value);

  double? get dailyUtilizationRatio =>
      getField<double>('daily_utilization_ratio');
  set dailyUtilizationRatio(double? value) =>
      setField<double>('daily_utilization_ratio', value);

  double? get peakUsageHours => getField<double>('peak_usage_hours');
  set peakUsageHours(double? value) =>
      setField<double>('peak_usage_hours', value);

  double? get peakEnergyUsed => getField<double>('peak_energy_used');
  set peakEnergyUsed(double? value) =>
      setField<double>('peak_energy_used', value);

  double? get peakCost => getField<double>('peak_cost');
  set peakCost(double? value) => setField<double>('peak_cost', value);

  double? get avgUsageHoursPerRecord =>
      getField<double>('avg_usage_hours_per_record');
  set avgUsageHoursPerRecord(double? value) =>
      setField<double>('avg_usage_hours_per_record', value);

  double? get avgEnergyPerRecord => getField<double>('avg_energy_per_record');
  set avgEnergyPerRecord(double? value) =>
      setField<double>('avg_energy_per_record', value);

  double? get avgCostPerRecord => getField<double>('avg_cost_per_record');
  set avgCostPerRecord(double? value) =>
      setField<double>('avg_cost_per_record', value);

  double? get previousDayUsageHours =>
      getField<double>('previous_day_usage_hours');
  set previousDayUsageHours(double? value) =>
      setField<double>('previous_day_usage_hours', value);
}
