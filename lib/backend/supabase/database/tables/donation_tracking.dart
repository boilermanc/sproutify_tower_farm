import '../database.dart';

class DonationTrackingTable extends SupabaseTable<DonationTrackingRow> {
  @override
  String get tableName => 'donation_tracking';

  @override
  DonationTrackingRow createRow(Map<String, dynamic> data) =>
      DonationTrackingRow(data);
}

class DonationTrackingRow extends SupabaseDataRow {
  DonationTrackingRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => DonationTrackingTable();

  int get donationId => getField<int>('donation_id')!;
  set donationId(int value) => setField<int>('donation_id', value);

  int get actionId => getField<int>('action_id')!;
  set actionId(int value) => setField<int>('action_id', value);

  int get harvestActionId => getField<int>('harvest_action_id')!;
  set harvestActionId(int value) => setField<int>('harvest_action_id', value);

  String get farmId => getField<String>('farm_id')!;
  set farmId(String value) => setField<String>('farm_id', value);

  int get towerId => getField<int>('tower_id')!;
  set towerId(int value) => setField<int>('tower_id', value);

  int get plantId => getField<int>('plant_id')!;
  set plantId(int value) => setField<int>('plant_id', value);

  int get quantity => getField<int>('quantity')!;
  set quantity(int value) => setField<int>('quantity', value);

  String get donationType => getField<String>('donation_type')!;
  set donationType(String value) => setField<String>('donation_type', value);

  String? get recipientName => getField<String>('recipient_name');
  set recipientName(String? value) => setField<String>('recipient_name', value);

  DateTime get donationDate => getField<DateTime>('donation_date')!;
  set donationDate(DateTime value) =>
      setField<DateTime>('donation_date', value);

  dynamic? get notes => getField<dynamic>('notes');
  set notes(dynamic? value) => setField<dynamic>('notes', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  String get createdBy => getField<String>('created_by')!;
  set createdBy(String value) => setField<String>('created_by', value);
}
