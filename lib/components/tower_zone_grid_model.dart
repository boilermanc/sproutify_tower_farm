import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'tower_zone_grid_widget.dart' show TowerZoneGridWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TowerZoneGridModel extends FlutterFlowModel<TowerZoneGridWidget> {
  ///  Local state fields for this component.

  List<LightingZoneTowersRow> zoneID = [];
  void addToZoneID(LightingZoneTowersRow item) => zoneID.add(item);
  void removeFromZoneID(LightingZoneTowersRow item) => zoneID.remove(item);
  void removeAtIndexFromZoneID(int index) => zoneID.removeAt(index);
  void insertAtIndexInZoneID(int index, LightingZoneTowersRow item) =>
      zoneID.insert(index, item);
  void updateZoneIDAtIndex(
          int index, Function(LightingZoneTowersRow) updateFn) =>
      zoneID[index] = updateFn(zoneID[index]);

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
