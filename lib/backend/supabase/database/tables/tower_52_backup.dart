import '../database.dart';

class Tower52BackupTable extends SupabaseTable<Tower52BackupRow> {
  @override
  String get tableName => 'tower_52_backup';

  @override
  Tower52BackupRow createRow(Map<String, dynamic> data) =>
      Tower52BackupRow(data);
}

class Tower52BackupRow extends SupabaseDataRow {
  Tower52BackupRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => Tower52BackupTable();

  String? get tableNameField => getField<String>('table_name');
  set tableNameField(String? value) => setField<String>('table_name', value);

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  dynamic? get dataField => getField<dynamic>('data');
  set dataField(dynamic? value) => setField<dynamic>('data', value);
}
