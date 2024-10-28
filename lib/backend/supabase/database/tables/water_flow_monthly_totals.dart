import '../database.dart';

class WaterFlowMonthlyTotalsTable
    extends SupabaseTable<WaterFlowMonthlyTotalsRow> {
  @override
  String get tableName => 'water_flow_monthly_totals';

  @override
  WaterFlowMonthlyTotalsRow createRow(Map<String, dynamic> data) =>
      WaterFlowMonthlyTotalsRow(data);
}

class WaterFlowMonthlyTotalsRow extends SupabaseDataRow {
  WaterFlowMonthlyTotalsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => WaterFlowMonthlyTotalsTable();

  String get sensorId => getField<String>('sensor_id')!;
  set sensorId(String value) => setField<String>('sensor_id', value);

  DateTime get monthStartDate => getField<DateTime>('month_start_date')!;
  set monthStartDate(DateTime value) =>
      setField<DateTime>('month_start_date', value);

  double get monthlyTotalLiters => getField<double>('monthly_total_liters')!;
  set monthlyTotalLiters(double value) =>
      setField<double>('monthly_total_liters', value);

  double get monthlyTotalGallons => getField<double>('monthly_total_gallons')!;
  set monthlyTotalGallons(double value) =>
      setField<double>('monthly_total_gallons', value);

  double get runningTotalLiters => getField<double>('running_total_liters')!;
  set runningTotalLiters(double value) =>
      setField<double>('running_total_liters', value);

  double get runningTotalGallons => getField<double>('running_total_gallons')!;
  set runningTotalGallons(double value) =>
      setField<double>('running_total_gallons', value);

  String get farmId => getField<String>('farm_id')!;
  set farmId(String value) => setField<String>('farm_id', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  DateTime? get waterFlowLastUpdated =>
      getField<DateTime>('water_flow_last_updated');
  set waterFlowLastUpdated(DateTime? value) =>
      setField<DateTime>('water_flow_last_updated', value);
}
