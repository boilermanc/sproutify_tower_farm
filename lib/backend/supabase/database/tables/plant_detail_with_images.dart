import '../database.dart';

class PlantDetailWithImagesTable
    extends SupabaseTable<PlantDetailWithImagesRow> {
  @override
  String get tableName => 'plant_detail_with_images';

  @override
  PlantDetailWithImagesRow createRow(Map<String, dynamic> data) =>
      PlantDetailWithImagesRow(data);
}

class PlantDetailWithImagesRow extends SupabaseDataRow {
  PlantDetailWithImagesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PlantDetailWithImagesTable();

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);

  int? get towerId => getField<int>('tower_id');
  set towerId(int? value) => setField<int>('tower_id', value);

  String? get towerIdentifier => getField<String>('tower_identifier');
  set towerIdentifier(String? value) =>
      setField<String>('tower_identifier', value);

  int? get contentId => getField<int>('content_id');
  set contentId(int? value) => setField<int>('content_id', value);

  int? get plantId => getField<int>('plant_id');
  set plantId(int? value) => setField<int>('plant_id', value);

  String? get plantName => getField<String>('plant_name');
  set plantName(String? value) => setField<String>('plant_name', value);

  int? get totalQuantity => getField<int>('total_quantity');
  set totalQuantity(int? value) => setField<int>('total_quantity', value);

  int? get availableQuantity => getField<int>('available_quantity');
  set availableQuantity(int? value) =>
      setField<int>('available_quantity', value);

  DateTime? get seededDate => getField<DateTime>('seeded_date');
  set seededDate(DateTime? value) => setField<DateTime>('seeded_date', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  int? get portsUsed => getField<int>('ports_used');
  set portsUsed(int? value) => setField<int>('ports_used', value);

  DateTime? get actionDate => getField<DateTime>('action_date');
  set actionDate(DateTime? value) => setField<DateTime>('action_date', value);

  String? get actionName => getField<String>('action_name');
  set actionName(String? value) => setField<String>('action_name', value);

  String? get actionColor => getField<String>('action_color');
  set actionColor(String? value) => setField<String>('action_color', value);

  int? get reservedQuantity => getField<int>('reserved_quantity');
  set reservedQuantity(int? value) => setField<int>('reserved_quantity', value);

  String? get imageUrl => getField<String>('image_url');
  set imageUrl(String? value) => setField<String>('image_url', value);

  DateTime? get uploadDate => getField<DateTime>('upload_date');
  set uploadDate(DateTime? value) => setField<DateTime>('upload_date', value);

  double? get plantCoveragePercentage =>
      getField<double>('plant_coverage_percentage');
  set plantCoveragePercentage(double? value) =>
      setField<double>('plant_coverage_percentage', value);

  double? get plantCoverageDecimal =>
      getField<double>('plant_coverage_decimal');
  set plantCoverageDecimal(double? value) =>
      setField<double>('plant_coverage_decimal', value);

  int? get daysSinceSeeding => getField<int>('days_since_seeding');
  set daysSinceSeeding(int? value) =>
      setField<int>('days_since_seeding', value);

  double? get dailyGrowthRate => getField<double>('daily_growth_rate');
  set dailyGrowthRate(double? value) =>
      setField<double>('daily_growth_rate', value);

  int? get estimatedDaysToHarvest => getField<int>('estimated_days_to_harvest');
  set estimatedDaysToHarvest(int? value) =>
      setField<int>('estimated_days_to_harvest', value);

  String? get healthStatus => getField<String>('health_status');
  set healthStatus(String? value) => setField<String>('health_status', value);

  String? get healthStatusColor => getField<String>('health_status_color');
  set healthStatusColor(String? value) =>
      setField<String>('health_status_color', value);

  double? get utilizationRate => getField<double>('utilization_rate');
  set utilizationRate(double? value) =>
      setField<double>('utilization_rate', value);
}
