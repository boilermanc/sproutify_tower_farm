import '../database.dart';

class VDonationDetailsTable extends SupabaseTable<VDonationDetailsRow> {
  @override
  String get tableName => 'v_donation_details';

  @override
  VDonationDetailsRow createRow(Map<String, dynamic> data) =>
      VDonationDetailsRow(data);
}

class VDonationDetailsRow extends SupabaseDataRow {
  VDonationDetailsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VDonationDetailsTable();

  int? get donationId => getField<int>('donation_id');
  set donationId(int? value) => setField<int>('donation_id', value);

  String? get farmName => getField<String>('farm_name');
  set farmName(String? value) => setField<String>('farm_name', value);

  String? get farmCode => getField<String>('farm_code');
  set farmCode(String? value) => setField<String>('farm_code', value);

  String? get city => getField<String>('city');
  set city(String? value) => setField<String>('city', value);

  String? get state => getField<String>('state');
  set state(String? value) => setField<String>('state', value);

  String? get plantName => getField<String>('plant_name');
  set plantName(String? value) => setField<String>('plant_name', value);

  int? get quantity => getField<int>('quantity');
  set quantity(int? value) => setField<int>('quantity', value);

  String? get donationType => getField<String>('donation_type');
  set donationType(String? value) => setField<String>('donation_type', value);

  String? get recipientName => getField<String>('recipient_name');
  set recipientName(String? value) => setField<String>('recipient_name', value);

  DateTime? get donationDate => getField<DateTime>('donation_date');
  set donationDate(DateTime? value) =>
      setField<DateTime>('donation_date', value);

  String? get donatedByName => getField<String>('donated_by_name');
  set donatedByName(String? value) =>
      setField<String>('donated_by_name', value);

  String? get donatedByEmail => getField<String>('donated_by_email');
  set donatedByEmail(String? value) =>
      setField<String>('donated_by_email', value);

  DateTime? get harvestDate => getField<DateTime>('harvest_date');
  set harvestDate(DateTime? value) => setField<DateTime>('harvest_date', value);

  dynamic? get notes => getField<dynamic>('notes');
  set notes(dynamic? value) => setField<dynamic>('notes', value);

  String? get measurementSystem => getField<String>('measurement_system');
  set measurementSystem(String? value) =>
      setField<String>('measurement_system', value);
}
