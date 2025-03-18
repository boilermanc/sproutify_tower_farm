import '../database.dart';

class SensorAlertNotificationSettingsTable
    extends SupabaseTable<SensorAlertNotificationSettingsRow> {
  @override
  String get tableName => 'sensor_alert_notification_settings';

  @override
  SensorAlertNotificationSettingsRow createRow(Map<String, dynamic> data) =>
      SensorAlertNotificationSettingsRow(data);
}

class SensorAlertNotificationSettingsRow extends SupabaseDataRow {
  SensorAlertNotificationSettingsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SensorAlertNotificationSettingsTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get farmId => getField<String>('farm_id')!;
  set farmId(String value) => setField<String>('farm_id', value);

  String get createdBy => getField<String>('created_by')!;
  set createdBy(String value) => setField<String>('created_by', value);

  String get updatedBy => getField<String>('updated_by')!;
  set updatedBy(String value) => setField<String>('updated_by', value);

  bool get slackEnabled => getField<bool>('slack_enabled')!;
  set slackEnabled(bool value) => setField<bool>('slack_enabled', value);

  String? get slackWebhookUrl => getField<String>('slack_webhook_url');
  set slackWebhookUrl(String? value) =>
      setField<String>('slack_webhook_url', value);

  bool get emailEnabled => getField<bool>('email_enabled')!;
  set emailEnabled(bool value) => setField<bool>('email_enabled', value);

  List<String> get emailRecipients => getListField<String>('email_recipients');
  set emailRecipients(List<String>? value) =>
      setListField<String>('email_recipients', value);

  bool get inAppEnabled => getField<bool>('in_app_enabled')!;
  set inAppEnabled(bool value) => setField<bool>('in_app_enabled', value);

  bool get pushEnabled => getField<bool>('push_enabled')!;
  set pushEnabled(bool value) => setField<bool>('push_enabled', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  DateTime get updatedAt => getField<DateTime>('updated_at')!;
  set updatedAt(DateTime value) => setField<DateTime>('updated_at', value);
}
