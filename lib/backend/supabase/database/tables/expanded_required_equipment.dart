import '../database.dart';

class ExpandedRequiredEquipmentTable
    extends SupabaseTable<ExpandedRequiredEquipmentRow> {
  @override
  String get tableName => 'expanded_required_equipment';

  @override
  ExpandedRequiredEquipmentRow createRow(Map<String, dynamic> data) =>
      ExpandedRequiredEquipmentRow(data);
}

class ExpandedRequiredEquipmentRow extends SupabaseDataRow {
  ExpandedRequiredEquipmentRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ExpandedRequiredEquipmentTable();

  String? get sdsId => getField<String>('sds_id');
  set sdsId(String? value) => setField<String>('sds_id', value);

  String? get requiredEquipment => getField<String>('required_equipment');
  set requiredEquipment(String? value) =>
      setField<String>('required_equipment', value);
}
