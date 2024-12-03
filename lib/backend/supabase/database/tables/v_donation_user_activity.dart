import '../database.dart';

class VDonationUserActivityTable
    extends SupabaseTable<VDonationUserActivityRow> {
  @override
  String get tableName => 'v_donation_user_activity';

  @override
  VDonationUserActivityRow createRow(Map<String, dynamic> data) =>
      VDonationUserActivityRow(data);
}

class VDonationUserActivityRow extends SupabaseDataRow {
  VDonationUserActivityRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VDonationUserActivityTable();

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get fullName => getField<String>('full_name');
  set fullName(String? value) => setField<String>('full_name', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get farmName => getField<String>('farm_name');
  set farmName(String? value) => setField<String>('farm_name', value);

  String? get farmCode => getField<String>('farm_code');
  set farmCode(String? value) => setField<String>('farm_code', value);

  int? get totalDonations => getField<int>('total_donations');
  set totalDonations(int? value) => setField<int>('total_donations', value);

  int? get totalQuantityDonated => getField<int>('total_quantity_donated');
  set totalQuantityDonated(int? value) =>
      setField<int>('total_quantity_donated', value);

  DateTime? get firstDonation => getField<DateTime>('first_donation');
  set firstDonation(DateTime? value) =>
      setField<DateTime>('first_donation', value);

  DateTime? get lastDonation => getField<DateTime>('last_donation');
  set lastDonation(DateTime? value) =>
      setField<DateTime>('last_donation', value);

  int? get uniqueDonationTypes => getField<int>('unique_donation_types');
  set uniqueDonationTypes(int? value) =>
      setField<int>('unique_donation_types', value);
}
