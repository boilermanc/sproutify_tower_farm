import '../database.dart';

class WaterFlowYearlyTotalsTable
    extends SupabaseTable<WaterFlowYearlyTotalsRow> {
  @override
  String get tableName => 'water_flow_yearly_totals';

  @override
  WaterFlowYearlyTotalsRow createRow(Map<String, dynamic> data) =>
      WaterFlowYearlyTotalsRow(data);
}

class WaterFlowYearlyTotalsRow extends SupabaseDataRow {
  WaterFlowYearlyTotalsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => WaterFlowYearlyTotalsTable();

  String get sensorId => getField<String>('sensor_id')!;
  set sensorId(String value) => setField<String>('sensor_id', value);

  DateTime get yearStartDate => getField<DateTime>('year_start_date')!;
  set yearStartDate(DateTime value) =>
      setField<DateTime>('year_start_date', value);

  double get yearlyTotalLiters => getField<double>('yearly_total_liters')!;
  set yearlyTotalLiters(double value) =>
      setField<double>('yearly_total_liters', value);

  double get yearlyTotalGallons => getField<double>('yearly_total_gallons')!;
  set yearlyTotalGallons(double value) =>
      setField<double>('yearly_total_gallons', value);

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
