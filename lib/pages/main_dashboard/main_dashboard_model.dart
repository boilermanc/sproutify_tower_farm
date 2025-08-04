import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/components/side_nav_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/produce_plants/add_harvest_basic/add_harvest_basic_widget.dart';
import '/produce_plants/add_planting/add_planting_widget.dart';
import '/produce_plants/confirm_tower_waste/confirm_tower_waste_widget.dart';
import '/produce_plants/plant_towers/plant_towers_widget.dart';
import '/registration_profile/initial_tower_setup/initial_tower_setup_widget.dart';
import '/spacer/add_spacer_action/add_spacer_action_widget.dart';
import '/spacer/assign_spacer_task/assign_spacer_task_widget.dart';
import '/spacer/confirm_spacer_ready/confirm_spacer_ready_widget.dart';
import '/spacer/confirm_spacer_waste/confirm_spacer_waste_widget.dart';
import '/sproutify_a_i/mcp_reponse_window/mcp_reponse_window_widget.dart';
import '/sproutify_a_i/sproutify_a_i/sproutify_a_i_widget.dart';
import '/sproutify_a_i/sproutify_a_i_m_c_p_copy/sproutify_a_i_m_c_p_copy_widget.dart';
import '/tasks/clean_complete_task/clean_complete_task_widget.dart';
import '/tasks/task_mark_completed/task_mark_completed_widget.dart';
import '/towers/add_initial_towers/add_initial_towers_widget.dart';
import '/towers/update_towers/update_towers_widget.dart';
import 'dart:math';
import 'dart:ui';
import '/index.dart';
import 'main_dashboard_widget.dart' show MainDashboardWidget;
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class MainDashboardModel extends FlutterFlowModel<MainDashboardWidget> {
  ///  Local state fields for this page.

  int selectedPage = 1;

  /// filter for the towers table.
  String selectedStatusFilter = 'Null';

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Query Rows] action in main_Dashboard widget.
  List<InitialFarmLoadRow>? profileResponse0011;
  // Stores action output result for [Backend Call - Query Rows] action in main_Dashboard widget.
  List<WeatherLogsRow>? weatherData5533;
  // Model for sideNav component.
  late SideNavModel sideNavModel;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for reportTextField widget.
  FocusNode? reportTextFieldFocusNode;
  TextEditingController? reportTextFieldTextController;
  String? Function(BuildContext, String?)?
      reportTextFieldTextControllerValidator;
  // Stores action output result for [Backend Call - API (Send Full Prompt MCP)] action in reportTextField widget.
  ApiCallResponse? apiMCPResponse3311;
  // Model for addInitialTowers component.
  late AddInitialTowersModel addInitialTowersModel;
  // State field(s) for TabBar widget.
  TabController? tabBarController1;
  int get tabBarCurrentIndex1 =>
      tabBarController1 != null ? tabBarController1!.index : 0;
  int get tabBarPreviousIndex1 =>
      tabBarController1 != null ? tabBarController1!.previousIndex : 0;

  // State field(s) for towersDataTable widget.
  final towersDataTableController =
      FlutterFlowDataTableController<TowerDisplayWithPlantsRow>();
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController1 =
      FlutterFlowDataTableController<SpacerInventoryRow>();
  // State field(s) for mainDataTable widget.
  final mainDataTableController1 =
      FlutterFlowDataTableController<PlantDistributionBreakdownRow>();
  // State field(s) for TabBar widget.
  TabController? tabBarController2;
  int get tabBarCurrentIndex2 =>
      tabBarController2 != null ? tabBarController2!.index : 0;
  int get tabBarPreviousIndex2 =>
      tabBarController2 != null ? tabBarController2!.previousIndex : 0;

  // State field(s) for towerDataTable widget.
  final towerDataTableController =
      FlutterFlowDataTableController<PlantHarvestTimelineRow>();
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController2 =
      FlutterFlowDataTableController<WeeklyHarvestForecastRow>();
  // State field(s) for mainDataTable widget.
  final mainDataTableController2 =
      FlutterFlowDataTableController<PlantDistributionBreakdownRow>();

  @override
  void initState(BuildContext context) {
    sideNavModel = createModel(context, () => SideNavModel());
    addInitialTowersModel = createModel(context, () => AddInitialTowersModel());
  }

  @override
  void dispose() {
    sideNavModel.dispose();
    reportTextFieldFocusNode?.dispose();
    reportTextFieldTextController?.dispose();

    addInitialTowersModel.dispose();
    tabBarController1?.dispose();
    towersDataTableController.dispose();
    paginatedDataTableController1.dispose();
    mainDataTableController1.dispose();
    tabBarController2?.dispose();
    towerDataTableController.dispose();
    paginatedDataTableController2.dispose();
    mainDataTableController2.dispose();
  }
}
