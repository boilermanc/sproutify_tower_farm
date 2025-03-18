import '';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'assign_towers_to_zones_widget.dart' show AssignTowersToZonesWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AssignTowersToZonesModel
    extends FlutterFlowModel<AssignTowersToZonesWidget> {
  ///  Local state fields for this component.

  List<String> draggedTowers = [];
  void addToDraggedTowers(String item) => draggedTowers.add(item);
  void removeFromDraggedTowers(String item) => draggedTowers.remove(item);
  void removeAtIndexFromDraggedTowers(int index) =>
      draggedTowers.removeAt(index);
  void insertAtIndexInDraggedTowers(int index, String item) =>
      draggedTowers.insert(index, item);
  void updateDraggedTowersAtIndex(int index, Function(String) updateFn) =>
      draggedTowers[index] = updateFn(draggedTowers[index]);

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
