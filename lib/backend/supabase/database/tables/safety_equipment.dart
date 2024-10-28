import '../database.dart';

class SafetyEquipmentTable extends SupabaseTable<SafetyEquipmentRow> {
  @override
  String get tableName => 'safety_equipment';

  @override
  SafetyEquipmentRow createRow(Map<String, dynamic> data) =>
      SafetyEquipmentRow(data);
}

class SafetyEquipmentRow extends SupabaseDataRow {
  SafetyEquipmentRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SafetyEquipmentTable();

  String get equipmentId => getField<String>('equipment_id')!;
  set equipmentId(String value) => setField<String>('equipment_id', value);

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);
}
