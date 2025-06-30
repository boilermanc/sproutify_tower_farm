import '../database.dart';

class AiAnalysisQualityTable extends SupabaseTable<AiAnalysisQualityRow> {
  @override
  String get tableName => 'ai_analysis_quality';

  @override
  AiAnalysisQualityRow createRow(Map<String, dynamic> data) =>
      AiAnalysisQualityRow(data);
}

class AiAnalysisQualityRow extends SupabaseDataRow {
  AiAnalysisQualityRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AiAnalysisQualityTable();

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);

  String? get locationCode => getField<String>('location_code');
  set locationCode(String? value) => setField<String>('location_code', value);

  String? get pestType => getField<String>('pest_type');
  set pestType(String? value) => setField<String>('pest_type', value);

  DateTime? get analysisDate => getField<DateTime>('analysis_date');
  set analysisDate(DateTime? value) =>
      setField<DateTime>('analysis_date', value);

  String? get analysisModel => getField<String>('analysis_model');
  set analysisModel(String? value) => setField<String>('analysis_model', value);

  int? get totalAnalyses => getField<int>('total_analyses');
  set totalAnalyses(int? value) => setField<int>('total_analyses', value);

  double? get avgConfidence => getField<double>('avg_confidence');
  set avgConfidence(double? value) => setField<double>('avg_confidence', value);

  double? get minConfidence => getField<double>('min_confidence');
  set minConfidence(double? value) => setField<double>('min_confidence', value);

  int? get lowConfidenceCount => getField<int>('low_confidence_count');
  set lowConfidenceCount(int? value) =>
      setField<int>('low_confidence_count', value);

  int? get manualReviewCount => getField<int>('manual_review_count');
  set manualReviewCount(int? value) =>
      setField<int>('manual_review_count', value);

  String? get qualityRating => getField<String>('quality_rating');
  set qualityRating(String? value) => setField<String>('quality_rating', value);

  List<String> get qualityIssues => getListField<String>('quality_issues');
  set qualityIssues(List<String>? value) =>
      setListField<String>('quality_issues', value);

  String? get improvementRecommendation =>
      getField<String>('improvement_recommendation');
  set improvementRecommendation(String? value) =>
      setField<String>('improvement_recommendation', value);
}
