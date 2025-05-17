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
import '/registration_profile/profile_update_component/profile_update_component_widget.dart';
import '/sensors/sensor_alerts_copy/sensor_alerts_copy_widget.dart';
import '/spacer/add_spacer_action/add_spacer_action_widget.dart';
import '/spacer/assign_spacer_task/assign_spacer_task_widget.dart';
import '/spacer/confirm_spacer_ready/confirm_spacer_ready_widget.dart';
import '/spacer/confirm_spacer_waste/confirm_spacer_waste_widget.dart';
import '/sproutify_a_i/sproutify_a_i/sproutify_a_i_widget.dart';
import '/tasks/clean_complete_task/clean_complete_task_widget.dart';
import '/towers/add_tower/add_tower_widget.dart';
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
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Stores action output result for [Backend Call - API (generateTowerStatusReportwithNeightN)] action in Container widget.
  ApiCallResponse? apiResultit9;
  // State field(s) for TabBar widget.
  TabController? tabBarController1;
  int get tabBarCurrentIndex1 =>
      tabBarController1 != null ? tabBarController1!.index : 0;
  int get tabBarPreviousIndex1 =>
      tabBarController1 != null ? tabBarController1!.previousIndex : 0;

  // State field(s) for towerDataTable widget.
  final towerDataTableController1 =
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
  final towerDataTableController2 =
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
  }

  @override
  void dispose() {
    sideNavModel.dispose();
    tabBarController1?.dispose();
    towerDataTableController1.dispose();
    paginatedDataTableController1.dispose();
    mainDataTableController1.dispose();
    tabBarController2?.dispose();
    towerDataTableController2.dispose();
    paginatedDataTableController2.dispose();
    mainDataTableController2.dispose();
  }
}
