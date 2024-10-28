import '../database.dart';

class MonitoringTowerPhAdjustmentsTable
    extends SupabaseTable<MonitoringTowerPhAdjustmentsRow> {
  @override
  String get tableName => 'monitoring_tower_ph_adjustments';

  @override
  MonitoringTowerPhAdjustmentsRow createRow(Map<String, dynamic> data) =>
      MonitoringTowerPhAdjustmentsRow(data);
}

class MonitoringTowerPhAdjustmentsRow extends SupabaseDataRow {
  MonitoringTowerPhAdjustmentsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => MonitoringTowerPhAdjustmentsTable();

  String get phColorHex => getField<String>('ph_color_hex')!;
  set phColorHex(String value) => setField<String>('ph_color_hex', value);

  int get adjustmentId => getField<int>('adjustment_id')!;
  set adjustmentId(int value) => setField<int>('adjustment_id', value);

  int get readingId => getField<int>('reading_id')!;
  set readingId(int value) => setField<int>('reading_id', value);

  String get phColor => getField<String>('ph_color')!;
  set phColor(String value) => setField<String>('ph_color', value);

  String get phDirection => getField<String>('ph_direction')!;
  set phDirection(String value) => setField<String>('ph_direction', value);

  double get dosagePerGallonMl => getField<double>('dosage_per_gallon_ml')!;
  set dosagePerGallonMl(double value) =>
      setField<double>('dosage_per_gallon_ml', value);

  double get dosagePerGallonOz => getField<double>('dosage_per_gallon_oz')!;
  set dosagePerGallonOz(double value) =>
      setField<double>('dosage_per_gallon_oz', value);

  String get adjustmentDescription =>
      getField<String>('adjustment_description')!;
  set adjustmentDescription(String value) =>
      setField<String>('adjustment_description', value);
}
