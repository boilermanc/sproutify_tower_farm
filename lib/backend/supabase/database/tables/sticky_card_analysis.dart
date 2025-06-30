import '../database.dart';

class StickyCardAnalysisTable extends SupabaseTable<StickyCardAnalysisRow> {
  @override
  String get tableName => 'sticky_card_analysis';

  @override
  StickyCardAnalysisRow createRow(Map<String, dynamic> data) =>
      StickyCardAnalysisRow(data);
}

class StickyCardAnalysisRow extends SupabaseDataRow {
  StickyCardAnalysisRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => StickyCardAnalysisTable();

  String get analysisId => getField<String>('analysis_id')!;
  set analysisId(String value) => setField<String>('analysis_id', value);

  String get stickyTaskId => getField<String>('sticky_task_id')!;
  set stickyTaskId(String value) => setField<String>('sticky_task_id', value);

  String get pestType => getField<String>('pest_type')!;
  set pestType(String value) => setField<String>('pest_type', value);

  int get pestCount => getField<int>('pest_count')!;
  set pestCount(int value) => setField<int>('pest_count', value);

  double? get confidenceScore => getField<double>('confidence_score');
  set confidenceScore(double? value) =>
      setField<double>('confidence_score', value);

  String? get analysisModel => getField<String>('analysis_model');
  set analysisModel(String? value) => setField<String>('analysis_model', value);

  dynamic? get rawAnalysisData => getField<dynamic>('raw_analysis_data');
  set rawAnalysisData(dynamic? value) =>
      setField<dynamic>('raw_analysis_data', value);

  String? get severityLevel => getField<String>('severity_level');
  set severityLevel(String? value) => setField<String>('severity_level', value);

  bool? get requiresManualReview => getField<bool>('requires_manual_review');
  set requiresManualReview(bool? value) =>
      setField<bool>('requires_manual_review', value);

  String? get reviewedBy => getField<String>('reviewed_by');
  set reviewedBy(String? value) => setField<String>('reviewed_by', value);

  DateTime? get reviewedAt => getField<DateTime>('reviewed_at');
  set reviewedAt(DateTime? value) => setField<DateTime>('reviewed_at', value);

  DateTime? get analyzedAt => getField<DateTime>('analyzed_at');
  set analyzedAt(DateTime? value) => setField<DateTime>('analyzed_at', value);
}
