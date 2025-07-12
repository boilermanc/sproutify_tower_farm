import '../database.dart';

class WeatherLogsTable extends SupabaseTable<WeatherLogsRow> {
  @override
  String get tableName => 'weather_logs';

  @override
  WeatherLogsRow createRow(Map<String, dynamic> data) => WeatherLogsRow(data);
}

class WeatherLogsRow extends SupabaseDataRow {
  WeatherLogsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => WeatherLogsTable();

  int get logId => getField<int>('log_id')!;
  set logId(int value) => setField<int>('log_id', value);

  String? get city => getField<String>('city');
  set city(String? value) => setField<String>('city', value);

  double? get lat => getField<double>('lat');
  set lat(double? value) => setField<double>('lat', value);

  double? get lon => getField<double>('lon');
  set lon(double? value) => setField<double>('lon', value);

  double? get tempF => getField<double>('temp_f');
  set tempF(double? value) => setField<double>('temp_f', value);

  double? get tempC => getField<double>('temp_c');
  set tempC(double? value) => setField<double>('temp_c', value);

  double? get feelsLikeF => getField<double>('feels_like_f');
  set feelsLikeF(double? value) => setField<double>('feels_like_f', value);

  double? get feelsLikeC => getField<double>('feels_like_c');
  set feelsLikeC(double? value) => setField<double>('feels_like_c', value);

  double? get tempMinF => getField<double>('temp_min_f');
  set tempMinF(double? value) => setField<double>('temp_min_f', value);

  double? get tempMinC => getField<double>('temp_min_c');
  set tempMinC(double? value) => setField<double>('temp_min_c', value);

  double? get tempMaxF => getField<double>('temp_max_f');
  set tempMaxF(double? value) => setField<double>('temp_max_f', value);

  double? get tempMaxC => getField<double>('temp_max_c');
  set tempMaxC(double? value) => setField<double>('temp_max_c', value);

  int? get humidity => getField<int>('humidity');
  set humidity(int? value) => setField<int>('humidity', value);

  int? get pressure => getField<int>('pressure');
  set pressure(int? value) => setField<int>('pressure', value);

  double? get windMph => getField<double>('wind_mph');
  set windMph(double? value) => setField<double>('wind_mph', value);

  double? get windMs => getField<double>('wind_ms');
  set windMs(double? value) => setField<double>('wind_ms', value);

  String? get conditions => getField<String>('conditions');
  set conditions(String? value) => setField<String>('conditions', value);

  DateTime? get recordedAt => getField<DateTime>('recorded_at');
  set recordedAt(DateTime? value) => setField<DateTime>('recorded_at', value);

  String? get unitsSource => getField<String>('units_source');
  set unitsSource(String? value) => setField<String>('units_source', value);

  String get farmId => getField<String>('farm_id')!;
  set farmId(String value) => setField<String>('farm_id', value);

  String? get iconCode => getField<String>('icon_code');
  set iconCode(String? value) => setField<String>('icon_code', value);

  String? get iconUrl => getField<String>('icon_url');
  set iconUrl(String? value) => setField<String>('icon_url', value);
}
