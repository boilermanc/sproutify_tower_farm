import '../database.dart';

class ControllerPinsDropdownViewTable
    extends SupabaseTable<ControllerPinsDropdownViewRow> {
  @override
  String get tableName => 'controller_pins_dropdown_view';

  @override
  ControllerPinsDropdownViewRow createRow(Map<String, dynamic> data) =>
      ControllerPinsDropdownViewRow(data);
}

class ControllerPinsDropdownViewRow extends SupabaseDataRow {
  ControllerPinsDropdownViewRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ControllerPinsDropdownViewTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  String? get lightingControllerId =>
      getField<String>('lighting_controller_id');
  set lightingControllerId(String? value) =>
      setField<String>('lighting_controller_id', value);

  int? get relayPin => getField<int>('relay_pin');
  set relayPin(int? value) => setField<int>('relay_pin', value);

  String? get relayDescription => getField<String>('relay_description');
  set relayDescription(String? value) =>
      setField<String>('relay_description', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);
}
