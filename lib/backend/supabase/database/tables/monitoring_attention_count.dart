import '../database.dart';

class MonitoringAttentionCountTable
    extends SupabaseTable<MonitoringAttentionCountRow> {
  @override
  String get tableName => 'monitoring_attention_count';

  @override
  MonitoringAttentionCountRow createRow(Map<String, dynamic> data) =>
      MonitoringAttentionCountRow(data);
}

class MonitoringAttentionCountRow extends SupabaseDataRow {
  MonitoringAttentionCountRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => MonitoringAttentionCountTable();

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);

  int? get towersNeedingAttention => getField<int>('towers_needing_attention');
  set towersNeedingAttention(int? value) =>
      setField<int>('towers_needing_attention', value);
}
