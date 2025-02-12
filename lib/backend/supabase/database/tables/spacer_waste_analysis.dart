import '../database.dart';

class SpacerWasteAnalysisTable extends SupabaseTable<SpacerWasteAnalysisRow> {
  @override
  String get tableName => 'spacer_waste_analysis';

  @override
  SpacerWasteAnalysisRow createRow(Map<String, dynamic> data) =>
      SpacerWasteAnalysisRow(data);
}

class SpacerWasteAnalysisRow extends SupabaseDataRow {
  SpacerWasteAnalysisRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SpacerWasteAnalysisTable();

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);

  String? get plantName => getField<String>('plant_name');
  set plantName(String? value) => setField<String>('plant_name', value);

  DateTime? get wasteDate => getField<DateTime>('waste_date');
  set wasteDate(DateTime? value) => setField<DateTime>('waste_date', value);

  int? get wasteOccurrences => getField<int>('waste_occurrences');
  set wasteOccurrences(int? value) => setField<int>('waste_occurrences', value);

  int? get totalWasteQuantity => getField<int>('total_waste_quantity');
  set totalWasteQuantity(int? value) =>
      setField<int>('total_waste_quantity', value);

  double? get avgWasteQuantity => getField<double>('avg_waste_quantity');
  set avgWasteQuantity(double? value) =>
      setField<double>('avg_waste_quantity', value);
}
