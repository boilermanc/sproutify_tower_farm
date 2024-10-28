import '../database.dart';

class WaterFlowWeeklyTotalsTable
    extends SupabaseTable<WaterFlowWeeklyTotalsRow> {
  @override
  String get tableName => 'water_flow_weekly_totals';

  @override
  WaterFlowWeeklyTotalsRow createRow(Map<String, dynamic> data) =>
      WaterFlowWeeklyTotalsRow(data);
}

class WaterFlowWeeklyTotalsRow extends SupabaseDataRow {
  WaterFlowWeeklyTotalsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => WaterFlowWeeklyTotalsTable();

  String get sensorId => getField<String>('sensor_id')!;
  set sensorId(String value) => setField<String>('sensor_id', value);

  DateTime get weekStartDate => getField<DateTime>('week_start_date')!;
  set weekStartDate(DateTime value) =>
      setField<DateTime>('week_start_date', value);

  double get weeklyTotalLiters => getField<double>('weekly_total_liters')!;
  set weeklyTotalLiters(double value) =>
      setField<double>('weekly_total_liters', value);

  double get weeklyTotalGallons => getField<double>('weekly_total_gallons')!;
  set weeklyTotalGallons(double value) =>
      setField<double>('weekly_total_gallons', value);

  String get farmId => getField<String>('farm_id')!;
  set farmId(String value) => setField<String>('farm_id', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  DateTime? get waterFlowLastUpdated =>
      getField<DateTime>('water_flow_last_updated');
  set waterFlowLastUpdated(DateTime? value) =>
      setField<DateTime>('water_flow_last_updated', value);

  double? get runningTotalLiters => getField<double>('running_total_liters');
  set runningTotalLiters(double? value) =>
      setField<double>('running_total_liters', value);

  double? get runningTotalGallons => getField<double>('running_total_gallons');
  set runningTotalGallons(double? value) =>
      setField<double>('running_total_gallons', value);
}
