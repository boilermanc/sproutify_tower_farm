import '../database.dart';

class MechanicalsMechanicalTable
    extends SupabaseTable<MechanicalsMechanicalRow> {
  @override
  String get tableName => 'mechanicals_mechanical';

  @override
  MechanicalsMechanicalRow createRow(Map<String, dynamic> data) =>
      MechanicalsMechanicalRow(data);
}

class MechanicalsMechanicalRow extends SupabaseDataRow {
  MechanicalsMechanicalRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => MechanicalsMechanicalTable();

  String? get colorHex => getField<String>('color_hex');
  set colorHex(String? value) => setField<String>('color_hex', value);

  int get mechanicalId => getField<int>('mechanical_id')!;
  set mechanicalId(int value) => setField<int>('mechanical_id', value);

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);

  int? get typeId => getField<int>('type_id');
  set typeId(int? value) => setField<int>('type_id', value);

  int? get categoryId => getField<int>('category_id');
  set categoryId(int? value) => setField<int>('category_id', value);

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);

  int? get vendorId => getField<int>('vendor_id');
  set vendorId(int? value) => setField<int>('vendor_id', value);

  String? get model => getField<String>('model');
  set model(String? value) => setField<String>('model', value);

  String? get sku => getField<String>('sku');
  set sku(String? value) => setField<String>('sku', value);

  String? get measurementSystem => getField<String>('measurement_system');
  set measurementSystem(String? value) =>
      setField<String>('measurement_system', value);

  String? get createdBy => getField<String>('created_by');
  set createdBy(String? value) => setField<String>('created_by', value);

  String? get updatedBy => getField<String>('updated_by');
  set updatedBy(String? value) => setField<String>('updated_by', value);

  DateTime get dateCreated => getField<DateTime>('date_created')!;
  set dateCreated(DateTime value) => setField<DateTime>('date_created', value);

  DateTime get dateUpdated => getField<DateTime>('date_updated')!;
  set dateUpdated(DateTime value) => setField<DateTime>('date_updated', value);
}
