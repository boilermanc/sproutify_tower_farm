import '../database.dart';

class WaterFlowQuarterlyTotalsTable
    extends SupabaseTable<WaterFlowQuarterlyTotalsRow> {
  @override
  String get tableName => 'water_flow_quarterly_totals';

  @override
  WaterFlowQuarterlyTotalsRow createRow(Map<String, dynamic> data) =>
      WaterFlowQuarterlyTotalsRow(data);
}

class WaterFlowQuarterlyTotalsRow extends SupabaseDataRow {
  WaterFlowQuarterlyTotalsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => WaterFlowQuarterlyTotalsTable();

  String get sensorId => getField<String>('sensor_id')!;
  set sensorId(String value) => setField<String>('sensor_id', value);

  DateTime get quarterStartDate => getField<DateTime>('quarter_start_date')!;
  set quarterStartDate(DateTime value) =>
      setField<DateTime>('quarter_start_date', value);

  double get quarterlyTotalLiters =>
      getField<double>('quarterly_total_liters')!;
  set quarterlyTotalLiters(double value) =>
      setField<double>('quarterly_total_liters', value);

  double get quarterlyTotalGallons =>
      getField<double>('quarterly_total_gallons')!;
  set quarterlyTotalGallons(double value) =>
      setField<double>('quarterly_total_gallons', value);

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
