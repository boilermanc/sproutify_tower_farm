import '../database.dart';

class FarmImagesTable extends SupabaseTable<FarmImagesRow> {
  @override
  String get tableName => 'farm_images';

  @override
  FarmImagesRow createRow(Map<String, dynamic> data) => FarmImagesRow(data);
}

class FarmImagesRow extends SupabaseDataRow {
  FarmImagesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => FarmImagesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get farmId => getField<String>('farm_id')!;
  set farmId(String value) => setField<String>('farm_id', value);

  String get imageUrl => getField<String>('image_url')!;
  set imageUrl(String value) => setField<String>('image_url', value);

  DateTime? get uploadDate => getField<DateTime>('upload_date');
  set uploadDate(DateTime? value) => setField<DateTime>('upload_date', value);

  double? get plantCoveragePercentage =>
      getField<double>('plant_coverage_percentage');
  set plantCoveragePercentage(double? value) =>
      setField<double>('plant_coverage_percentage', value);

  int? get towerId => getField<int>('tower_id');
  set towerId(int? value) => setField<int>('tower_id', value);

  String? get towerIdentifier => getField<String>('tower_identifier');
  set towerIdentifier(String? value) =>
      setField<String>('tower_identifier', value);
}
