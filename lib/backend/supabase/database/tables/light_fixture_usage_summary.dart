import '../database.dart';

class LightFixtureUsageSummaryTable
    extends SupabaseTable<LightFixtureUsageSummaryRow> {
  @override
  String get tableName => 'light_fixture_usage_summary';

  @override
  LightFixtureUsageSummaryRow createRow(Map<String, dynamic> data) =>
      LightFixtureUsageSummaryRow(data);
}

class LightFixtureUsageSummaryRow extends SupabaseDataRow {
  LightFixtureUsageSummaryRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => LightFixtureUsageSummaryTable();

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);

  String? get zoneId => getField<String>('zone_id');
  set zoneId(String? value) => setField<String>('zone_id', value);

  String? get zoneName => getField<String>('zone_name');
  set zoneName(String? value) => setField<String>('zone_name', value);

  String? get lightingFixtureId => getField<String>('lighting_fixture_id');
  set lightingFixtureId(String? value) =>
      setField<String>('lighting_fixture_id', value);

  String? get fixtureName => getField<String>('fixture_name');
  set fixtureName(String? value) => setField<String>('fixture_name', value);

  String? get fixtureModel => getField<String>('fixture_model');
  set fixtureModel(String? value) => setField<String>('fixture_model', value);

  int? get fixtureQuantity => getField<int>('fixture_quantity');
  set fixtureQuantity(int? value) => setField<int>('fixture_quantity', value);

  double? get hoursPerFixture => getField<double>('hours_per_fixture');
  set hoursPerFixture(double? value) =>
      setField<double>('hours_per_fixture', value);

  double? get energyPerFixture => getField<double>('energy_per_fixture');
  set energyPerFixture(double? value) =>
      setField<double>('energy_per_fixture', value);

  double? get costPerFixture => getField<double>('cost_per_fixture');
  set costPerFixture(double? value) =>
      setField<double>('cost_per_fixture', value);

  double? get kwhPerHourPerFixture =>
      getField<double>('kwh_per_hour_per_fixture');
  set kwhPerHourPerFixture(double? value) =>
      setField<double>('kwh_per_hour_per_fixture', value);

  DateTime? get earliestPeriodStart =>
      getField<DateTime>('earliest_period_start');
  set earliestPeriodStart(DateTime? value) =>
      setField<DateTime>('earliest_period_start', value);

  DateTime? get latestPeriodEnd => getField<DateTime>('latest_period_end');
  set latestPeriodEnd(DateTime? value) =>
      setField<DateTime>('latest_period_end', value);

  double? get totalUsageHours => getField<double>('total_usage_hours');
  set totalUsageHours(double? value) =>
      setField<double>('total_usage_hours', value);

  double? get totalEnergyUsed => getField<double>('total_energy_used');
  set totalEnergyUsed(double? value) =>
      setField<double>('total_energy_used', value);

  double? get totalCost => getField<double>('total_cost');
  set totalCost(double? value) => setField<double>('total_cost', value);

  double? get avgDailyHoursPerFixture =>
      getField<double>('avg_daily_hours_per_fixture');
  set avgDailyHoursPerFixture(double? value) =>
      setField<double>('avg_daily_hours_per_fixture', value);

  double? get avgDailyEnergyPerFixture =>
      getField<double>('avg_daily_energy_per_fixture');
  set avgDailyEnergyPerFixture(double? value) =>
      setField<double>('avg_daily_energy_per_fixture', value);

  double? get avgDailyCostPerFixture =>
      getField<double>('avg_daily_cost_per_fixture');
  set avgDailyCostPerFixture(double? value) =>
      setField<double>('avg_daily_cost_per_fixture', value);

  int? get daysActive => getField<int>('days_active');
  set daysActive(int? value) => setField<int>('days_active', value);

  double? get utilizationRatePerFixture =>
      getField<double>('utilization_rate_per_fixture');
  set utilizationRatePerFixture(double? value) =>
      setField<double>('utilization_rate_per_fixture', value);

  double? get fixtureMaxPowerKw => getField<double>('fixture_max_power_kw');
  set fixtureMaxPowerKw(double? value) =>
      setField<double>('fixture_max_power_kw', value);

  double? get efficiencyPercentage => getField<double>('efficiency_percentage');
  set efficiencyPercentage(double? value) =>
      setField<double>('efficiency_percentage', value);
}
