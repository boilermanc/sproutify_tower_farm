import '../database.dart';

class SeedingCostsTable extends SupabaseTable<SeedingCostsRow> {
  @override
  String get tableName => 'seeding_costs';

  @override
  SeedingCostsRow createRow(Map<String, dynamic> data) => SeedingCostsRow(data);
}

class SeedingCostsRow extends SupabaseDataRow {
  SeedingCostsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SeedingCostsTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get standingOrderId => getField<String>('standing_order_id')!;
  set standingOrderId(String value) =>
      setField<String>('standing_order_id', value);

  String get vendorId => getField<String>('vendor_id')!;
  set vendorId(String value) => setField<String>('vendor_id', value);

  double get costPerUnit => getField<double>('cost_per_unit')!;
  set costPerUnit(double value) => setField<double>('cost_per_unit', value);

  int get quantity => getField<int>('quantity')!;
  set quantity(int value) => setField<int>('quantity', value);

  double? get totalCost => getField<double>('total_cost');
  set totalCost(double? value) => setField<double>('total_cost', value);

  DateTime get orderDate => getField<DateTime>('order_date')!;
  set orderDate(DateTime value) => setField<DateTime>('order_date', value);

  String get farmId => getField<String>('farm_id')!;
  set farmId(String value) => setField<String>('farm_id', value);
}
