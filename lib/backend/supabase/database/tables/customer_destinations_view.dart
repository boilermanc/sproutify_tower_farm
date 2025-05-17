import '../database.dart';

class CustomerDestinationsViewTable
    extends SupabaseTable<CustomerDestinationsViewRow> {
  @override
  String get tableName => 'customer_destinations_view';

  @override
  CustomerDestinationsViewRow createRow(Map<String, dynamic> data) =>
      CustomerDestinationsViewRow(data);
}

class CustomerDestinationsViewRow extends SupabaseDataRow {
  CustomerDestinationsViewRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CustomerDestinationsViewTable();

  String? get destinationId => getField<String>('destination_id');
  set destinationId(String? value) => setField<String>('destination_id', value);

  String? get destinationName => getField<String>('destination_name');
  set destinationName(String? value) =>
      setField<String>('destination_name', value);

  String? get farmId => getField<String>('farm_id');
  set farmId(String? value) => setField<String>('farm_id', value);
}
