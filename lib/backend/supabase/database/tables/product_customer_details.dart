import '../database.dart';

class ProductCustomerDetailsTable
    extends SupabaseTable<ProductCustomerDetailsRow> {
  @override
  String get tableName => 'product_customer_details';

  @override
  ProductCustomerDetailsRow createRow(Map<String, dynamic> data) =>
      ProductCustomerDetailsRow(data);
}

class ProductCustomerDetailsRow extends SupabaseDataRow {
  ProductCustomerDetailsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ProductCustomerDetailsTable();

  String get customerDetailId => getField<String>('customer_detail_id')!;
  set customerDetailId(String value) =>
      setField<String>('customer_detail_id', value);

  String get productChemicalId => getField<String>('product_chemical_id')!;
  set productChemicalId(String value) =>
      setField<String>('product_chemical_id', value);

  double? get dosingAmount => getField<double>('dosing_amount');
  set dosingAmount(double? value) => setField<double>('dosing_amount', value);

  String? get dosingAmountUnitId => getField<String>('dosing_amount_unit_id');
  set dosingAmountUnitId(String? value) =>
      setField<String>('dosing_amount_unit_id', value);

  double? get dosingVolume => getField<double>('dosing_volume');
  set dosingVolume(double? value) => setField<double>('dosing_volume', value);

  String? get dosingVolumeUnitId => getField<String>('dosing_volume_unit_id');
  set dosingVolumeUnitId(String? value) =>
      setField<String>('dosing_volume_unit_id', value);

  String? get notes => getField<String>('notes');
  set notes(String? value) => setField<String>('notes', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  DateTime get updatedAt => getField<DateTime>('updated_at')!;
  set updatedAt(DateTime value) => setField<DateTime>('updated_at', value);

  String get farmId => getField<String>('farm_id')!;
  set farmId(String value) => setField<String>('farm_id', value);
}
