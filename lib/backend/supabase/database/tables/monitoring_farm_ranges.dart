import '../database.dart';

class MonitoringFarmRangesTable extends SupabaseTable<MonitoringFarmRangesRow> {
  @override
  String get tableName => 'monitoring_farm_ranges';

  @override
  MonitoringFarmRangesRow createRow(Map<String, dynamic> data) =>
      MonitoringFarmRangesRow(data);
}

class MonitoringFarmRangesRow extends SupabaseDataRow {
  MonitoringFarmRangesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => MonitoringFarmRangesTable();

  String get farmId => getField<String>('farm_id')!;
  set farmId(String value) => setField<String>('farm_id', value);

  double get phMin => getField<double>('ph_min')!;
  set phMin(double value) => setField<double>('ph_min', value);

  double get phMax => getField<double>('ph_max')!;
  set phMax(double value) => setField<double>('ph_max', value);

  double get ecMin => getField<double>('ec_min')!;
  set ecMin(double value) => setField<double>('ec_min', value);

  double get ecMax => getField<double>('ec_max')!;
  set ecMax(double value) => setField<double>('ec_max', value);

  int get maxHoursSinceLastReading =>
      getField<int>('max_hours_since_last_reading')!;
  set maxHoursSinceLastReading(int value) =>
      setField<int>('max_hours_since_last_reading', value);

  int? get normalCheckIntervalHours =>
      getField<int>('normal_check_interval_hours');
  set normalCheckIntervalHours(int? value) =>
      setField<int>('normal_check_interval_hours', value);

  int? get issueCheckIntervalHours =>
      getField<int>('issue_check_interval_hours');
  set issueCheckIntervalHours(int? value) =>
      setField<int>('issue_check_interval_hours', value);
}
