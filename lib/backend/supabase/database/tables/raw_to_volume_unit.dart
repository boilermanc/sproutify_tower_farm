import '../database.dart';

class RawToVolumeUnitTable extends SupabaseTable<RawToVolumeUnitRow> {
  @override
  String get tableName => 'raw_to_volume_unit';

  @override
  RawToVolumeUnitRow createRow(Map<String, dynamic> data) =>
      RawToVolumeUnitRow(data);
}

class RawToVolumeUnitRow extends SupabaseDataRow {
  RawToVolumeUnitRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => RawToVolumeUnitTable();

  String get rawUnitText => getField<String>('raw_unit_text')!;
  set rawUnitText(String value) => setField<String>('raw_unit_text', value);

  String get unitSymbol => getField<String>('unit_symbol')!;
  set unitSymbol(String value) => setField<String>('unit_symbol', value);
}
