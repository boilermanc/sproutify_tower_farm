import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/components/add_planting_widget.dart';
import '/components/add_spacer_action_widget.dart';
import '/components/add_tower_widget.dart';
import '/components/allocate_produce_widget.dart';
import '/components/assign_spacer_task_widget.dart';
import '/components/confirm_spacer_ready_widget.dart';
import '/components/confirm_spacer_waste_widget.dart';
import '/components/no_produce_display_widget.dart';
import '/components/profile_update_component_widget.dart';
import '/components/side_nav_widget.dart';
import '/components/sproutify_a_i_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'main_dashboard_widget.dart' show MainDashboardWidget;
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MainDashboardModel extends FlutterFlowModel<MainDashboardWidget> {
  ///  Local state fields for this page.

  int selectedPage = 1;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (GetUserProfile)] action in main_Dashboard widget.
  ApiCallResponse? apiResultopx;
  // Stores action output result for [Backend Call - Query Rows] action in main_Dashboard widget.
  List<FarmsRow>? queryFarmLongLat8822;
  // Stores action output result for [Backend Call - API (getOpenWeather)] action in main_Dashboard widget.
  ApiCallResponse? apiResult8es;
  // Model for sideNav component.
  late SideNavModel sideNavModel;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController1 =
      FlutterFlowDataTableController<TowersStatusRow>();
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController2 =
      FlutterFlowDataTableController<SpacerInventoryRow>();
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController3 =
      FlutterFlowDataTableController<TaskPlantingsRow>();
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController4 =
      FlutterFlowDataTableController<TowerPlantsDetailRow>();

  @override
  void initState(BuildContext context) {
    sideNavModel = createModel(context, () => SideNavModel());
  }

  @override
  void dispose() {
    sideNavModel.dispose();
    tabBarController?.dispose();
    paginatedDataTableController1.dispose();
    paginatedDataTableController2.dispose();
    paginatedDataTableController3.dispose();
    paginatedDataTableController4.dispose();
  }
}
