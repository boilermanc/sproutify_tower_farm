import '../database.dart';

class ControllerPinsTable extends SupabaseTable<ControllerPinsRow> {
  @override
  String get tableName => 'controller_pins';

  @override
  ControllerPinsRow createRow(Map<String, dynamic> data) =>
      ControllerPinsRow(data);
}

class ControllerPinsRow extends SupabaseDataRow {
  ControllerPinsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ControllerPinsTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get lightingControllerId =>
      getField<String>('lighting_controller_id')!;
  set lightingControllerId(String value) =>
      setField<String>('lighting_controller_id', value);

  int get relayPin => getField<int>('relay_pin')!;
  set relayPin(int value) => setField<int>('relay_pin', value);

  int get relayNumber => getField<int>('relay_number')!;
  set relayNumber(int value) => setField<int>('relay_number', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  String get status => getField<String>('status')!;
  set status(String value) => setField<String>('status', value);
}
