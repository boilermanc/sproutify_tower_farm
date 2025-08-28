import '/backend/supabase/supabase.dart';
import '/components/side_nav_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/nutrients/update_e_c_tower/update_e_c_tower_widget.dart';
import '/nutrients/updateph_tower/updateph_tower_widget.dart';
import '/products/no_monitoring/no_monitoring_widget.dart';
import 'dart:ui';
import 'dart:async';
import 'main_nutrients_widget.dart' show MainNutrientsWidget;
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class MainNutrientsModel extends FlutterFlowModel<MainNutrientsWidget> {
  ///  Local state fields for this page.

  int selectedPage = 5;

  int? ecIssues = 0;

  int? phIssues = 0;

  int? noIssues = 0;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Query Rows] action in main_Nutrients widget.
  List<MonitoringSummaryDashboardRow>? farmMonitoringData1111;
  // Model for sideNav component.
  late SideNavModel sideNavModel;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController = FlutterFlowDataTableController<
      MonitoringTowerDashboardEnhancedWithValuesRow>();
  // Stores action output result for [Bottom Sheet - updatephTower] action in phContainer widget.
  bool? phValueUpdate6633;
  Completer<List<MonitoringTowerDashboardEnhancedWithValuesRow>>?
      requestCompleter;
  // Stores action output result for [Bottom Sheet - updateECTower] action in ecContainer widget.
  bool? updateECValue;

  @override
  void initState(BuildContext context) {
    sideNavModel = createModel(context, () => SideNavModel());
  }

  @override
  void dispose() {
    sideNavModel.dispose();
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
