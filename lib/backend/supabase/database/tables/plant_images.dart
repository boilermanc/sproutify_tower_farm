import '../database.dart';

class PlantImagesTable extends SupabaseTable<PlantImagesRow> {
  @override
  String get tableName => 'plant_images';

  @override
  PlantImagesRow createRow(Map<String, dynamic> data) => PlantImagesRow(data);
}

class PlantImagesRow extends SupabaseDataRow {
  PlantImagesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PlantImagesTable();

  int get imageId => getField<int>('image_id')!;
  set imageId(int value) => setField<int>('image_id', value);

  String get imageName => getField<String>('image_name')!;
  set imageName(String value) => setField<String>('image_name', value);

  String? get plantId => getField<String>('plant_id');
  set plantId(String? value) => setField<String>('plant_id', value);

  String? get plantName => getField<String>('plant_name');
  set plantName(String? value) => setField<String>('plant_name', value);

  String get imageUrl => getField<String>('image_url')!;
  set imageUrl(String value) => setField<String>('image_url', value);
}
