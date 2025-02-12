import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'dart:async';
import 'insert_task_tower_widget.dart' show InsertTaskTowerWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class InsertTaskTowerModel extends FlutterFlowModel<InsertTaskTowerWidget> {
  ///  Local state fields for this component.

  String selectedStatus = 'All';

  List<int> selectedTowerIDs = [];
  void addToSelectedTowerIDs(int item) => selectedTowerIDs.add(item);
  void removeFromSelectedTowerIDs(int item) => selectedTowerIDs.remove(item);
  void removeAtIndexFromSelectedTowerIDs(int index) =>
      selectedTowerIDs.removeAt(index);
  void insertAtIndexInSelectedTowerIDs(int index, int item) =>
      selectedTowerIDs.insert(index, item);
  void updateSelectedTowerIDsAtIndex(int index, Function(int) updateFn) =>
      selectedTowerIDs[index] = updateFn(selectedTowerIDs[index]);

  ///  State fields for stateful widgets in this component.

  Completer<List<TowerDisplayStatusRow>>? requestCompleter;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  /// Additional helper methods.
  Future waitForRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
