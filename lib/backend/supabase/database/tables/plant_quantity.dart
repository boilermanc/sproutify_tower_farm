import '../database.dart';

class PlantQuantityTable extends SupabaseTable<PlantQuantityRow> {
  @override
  String get tableName => 'plant_quantity';

  @override
  PlantQuantityRow createRow(Map<String, dynamic> data) =>
      PlantQuantityRow(data);
}

class PlantQuantityRow extends SupabaseDataRow {
  PlantQuantityRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PlantQuantityTable();

  int get quantity => getField<int>('quantity')!;
  set quantity(int value) => setField<int>('quantity', value);
}
