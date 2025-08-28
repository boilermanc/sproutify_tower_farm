import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/tasks/delete_recurring_task/delete_recurring_task_widget.dart';
import 'dart:ui';
import 'dart:async';
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'recurring_task_management_widget.dart'
    show RecurringTaskManagementWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class RecurringTaskManagementModel
    extends FlutterFlowModel<RecurringTaskManagementWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<TaskRecurringViewRow>();
  Completer<List<TaskRecurringViewRow>>? requestCompleter;
  // Stores action output result for [Backend Call - Update Row(s)] action in Container widget.
  List<TasksRecurringRow>? recurringTaskUpdated8822;
  // Stores action output result for [Bottom Sheet - deleteRecurringTask] action in Container widget.
  bool? deleteRecurring1111;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    paginatedDataTableController.dispose();
  }

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
