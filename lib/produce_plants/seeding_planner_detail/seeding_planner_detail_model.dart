import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/produce_plants/seed_weekly_printed_chart/seed_weekly_printed_chart_widget.dart';
import '/produce_plants/seeding_planner/seeding_planner_widget.dart';
import 'dart:ui';
import 'dart:async';
import 'seeding_planner_detail_widget.dart' show SeedingPlannerDetailWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class SeedingPlannerDetailModel
    extends FlutterFlowModel<SeedingPlannerDetailWidget> {
  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (generateWeeklySeedingReportWithNeightN)] action in addPlantsButton widget.
  ApiCallResponse? apiResult4h7;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<WeeklyPlanDetailsUiRow>();
  Completer<List<WeeklyPlanDetailsUiRow>>? requestCompleter;

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
