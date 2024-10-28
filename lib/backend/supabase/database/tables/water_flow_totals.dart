import '../database.dart';

class WaterFlowTotalsTable extends SupabaseTable<WaterFlowTotalsRow> {
  @override
  String get tableName => 'water_flow_totals';

  @override
  WaterFlowTotalsRow createRow(Map<String, dynamic> data) =>
      WaterFlowTotalsRow(data);
}

class WaterFlowTotalsRow extends SupabaseDataRow {
  WaterFlowTotalsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => WaterFlowTotalsTable();

  String get sensorId => getField<String>('sensor_id')!;
  set sensorId(String value) => setField<String>('sensor_id', value);

  DateTime get date => getField<DateTime>('date')!;
  set date(DateTime value) => setField<DateTime>('date', value);

  double get dailyTotalLiters => getField<double>('daily_total_liters')!;
  set dailyTotalLiters(double value) =>
      setField<double>('daily_total_liters', value);

  double get dailyTotalGallons => getField<double>('daily_total_gallons')!;
  set dailyTotalGallons(double value) =>
      setField<double>('daily_total_gallons', value);
}
