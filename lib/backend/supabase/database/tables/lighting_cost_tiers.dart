import '../database.dart';

class LightingCostTiersTable extends SupabaseTable<LightingCostTiersRow> {
  @override
  String get tableName => 'lighting_cost_tiers';

  @override
  LightingCostTiersRow createRow(Map<String, dynamic> data) =>
      LightingCostTiersRow(data);
}

class LightingCostTiersRow extends SupabaseDataRow {
  LightingCostTiersRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => LightingCostTiersTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int get lightingCostId => getField<int>('lighting_cost_id')!;
  set lightingCostId(int value) => setField<int>('lighting_cost_id', value);

  int get tierOrder => getField<int>('tier_order')!;
  set tierOrder(int value) => setField<int>('tier_order', value);

  int? get kwhLimit => getField<int>('kwh_limit');
  set kwhLimit(int? value) => setField<int>('kwh_limit', value);

  double get rate => getField<double>('rate')!;
  set rate(double value) => setField<double>('rate', value);
}
