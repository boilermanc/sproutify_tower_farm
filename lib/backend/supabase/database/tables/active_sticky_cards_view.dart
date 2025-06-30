import '../database.dart';

class ActiveStickyCardsViewTable
    extends SupabaseTable<ActiveStickyCardsViewRow> {
  @override
  String get tableName => 'active_sticky_cards_view';

  @override
  ActiveStickyCardsViewRow createRow(Map<String, dynamic> data) =>
      ActiveStickyCardsViewRow(data);
}

class ActiveStickyCardsViewRow extends SupabaseDataRow {
  ActiveStickyCardsViewRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ActiveStickyCardsViewTable();

  String? get cardId => getField<String>('card_id');
  set cardId(String? value) => setField<String>('card_id', value);

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);

  String? get locationCode => getField<String>('location_code');
  set locationCode(String? value) => setField<String>('location_code', value);

  String? get locationName => getField<String>('location_name');
  set locationName(String? value) => setField<String>('location_name', value);

  String? get cardType => getField<String>('card_type');
  set cardType(String? value) => setField<String>('card_type', value);

  DateTime? get deployedAt => getField<DateTime>('deployed_at');
  set deployedAt(DateTime? value) => setField<DateTime>('deployed_at', value);

  DateTime? get scheduledRefreshDate =>
      getField<DateTime>('scheduled_refresh_date');
  set scheduledRefreshDate(DateTime? value) =>
      setField<DateTime>('scheduled_refresh_date', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  int? get checkIntervalDays => getField<int>('check_interval_days');
  set checkIntervalDays(int? value) =>
      setField<int>('check_interval_days', value);

  double? get daysDeployed => getField<double>('days_deployed');
  set daysDeployed(double? value) => setField<double>('days_deployed', value);

  int? get daysUntilRefresh => getField<int>('days_until_refresh');
  set daysUntilRefresh(int? value) =>
      setField<int>('days_until_refresh', value);

  int? get pendingChecks => getField<int>('pending_checks');
  set pendingChecks(int? value) => setField<int>('pending_checks', value);

  int? get overdueChecks => getField<int>('overdue_checks');
  set overdueChecks(int? value) => setField<int>('overdue_checks', value);

  DateTime? get lastAnalysisDate => getField<DateTime>('last_analysis_date');
  set lastAnalysisDate(DateTime? value) =>
      setField<DateTime>('last_analysis_date', value);

  int? get pestsThisWeek => getField<int>('pests_this_week');
  set pestsThisWeek(int? value) => setField<int>('pests_this_week', value);

  String? get alertStatus => getField<String>('alert_status');
  set alertStatus(String? value) => setField<String>('alert_status', value);

  String? get colorCode => getField<String>('color_code');
  set colorCode(String? value) => setField<String>('color_code', value);

  String? get bgColorCode => getField<String>('bg_color_code');
  set bgColorCode(String? value) => setField<String>('bg_color_code', value);

  int? get nextTaskId => getField<int>('next_task_id');
  set nextTaskId(int? value) => setField<int>('next_task_id', value);
}
