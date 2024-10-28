import '../database.dart';

class VendorTypesBackupTable extends SupabaseTable<VendorTypesBackupRow> {
  @override
  String get tableName => 'vendor_types_backup';

  @override
  VendorTypesBackupRow createRow(Map<String, dynamic> data) =>
      VendorTypesBackupRow(data);
}

class VendorTypesBackupRow extends SupabaseDataRow {
  VendorTypesBackupRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VendorTypesBackupTable();

  String? get typeId => getField<String>('type_id');
  set typeId(String? value) => setField<String>('type_id', value);

  String? get typeName => getField<String>('type_name');
  set typeName(String? value) => setField<String>('type_name', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);
}
