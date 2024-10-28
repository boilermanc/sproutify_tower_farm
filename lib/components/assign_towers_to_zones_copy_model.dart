import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'assign_towers_to_zones_copy_widget.dart'
    show AssignTowersToZonesCopyWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AssignTowersToZonesCopyModel
    extends FlutterFlowModel<AssignTowersToZonesCopyWidget> {
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

  List<String> towerDraggableList = [];
  void addToTowerDraggableList(String item) => towerDraggableList.add(item);
  void removeFromTowerDraggableList(String item) =>
      towerDraggableList.remove(item);
  void removeAtIndexFromTowerDraggableList(int index) =>
      towerDraggableList.removeAt(index);
  void insertAtIndexInTowerDraggableList(int index, String item) =>
      towerDraggableList.insert(index, item);
  void updateTowerDraggableListAtIndex(int index, Function(String) updateFn) =>
      towerDraggableList[index] = updateFn(towerDraggableList[index]);

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - Query Rows] action in assignTowersToZonesCopy widget.
  List<TowerViewRow>? towerListForZone7722;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
