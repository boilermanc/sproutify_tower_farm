import '../database.dart';

class CharityDestinationsViewTable
    extends SupabaseTable<CharityDestinationsViewRow> {
  @override
  String get tableName => 'charity_destinations_view';

  @override
  CharityDestinationsViewRow createRow(Map<String, dynamic> data) =>
      CharityDestinationsViewRow(data);
}

class CharityDestinationsViewRow extends SupabaseDataRow {
  CharityDestinationsViewRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CharityDestinationsViewTable();

  String? get destinationId => getField<String>('destination_id');
  set destinationId(String? value) => setField<String>('destination_id', value);

  String? get destinationName => getField<String>('destination_name');
  set destinationName(String? value) =>
      setField<String>('destination_name', value);

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);
}
