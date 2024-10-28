import '/backend/supabase/supabase.dart';
import '/components/assign_towers_to_zones_copy_widget.dart';
import '/components/light_schedule_data_table_widget.dart';
import '/components/lighting_zone_towers_widget.dart';
import '/components/no_lighting_widget.dart';
import '/components/select_fixture_quantity_widget.dart';
import '/components/side_nav_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:math';
import 'main_light_manegement_widget.dart' show MainLightManegementWidget;
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MainLightManegementModel
    extends FlutterFlowModel<MainLightManegementWidget> {
  ///  Local state fields for this page.

  List<String> draggedTowers = [];
  void addToDraggedTowers(String item) => draggedTowers.add(item);
  void removeFromDraggedTowers(String item) => draggedTowers.remove(item);
  void removeAtIndexFromDraggedTowers(int index) =>
      draggedTowers.removeAt(index);
  void insertAtIndexInDraggedTowers(int index, String item) =>
      draggedTowers.insert(index, item);
  void updateDraggedTowersAtIndex(int index, Function(String) updateFn) =>
      draggedTowers[index] = updateFn(draggedTowers[index]);

  List<String> draggableTowers = [];
  void addToDraggableTowers(String item) => draggableTowers.add(item);
  void removeFromDraggableTowers(String item) => draggableTowers.remove(item);
  void removeAtIndexFromDraggableTowers(int index) =>
      draggableTowers.removeAt(index);
  void insertAtIndexInDraggableTowers(int index, String item) =>
      draggableTowers.insert(index, item);
  void updateDraggableTowersAtIndex(int index, Function(String) updateFn) =>
      draggableTowers[index] = updateFn(draggableTowers[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Query Rows] action in main_LightManegement widget.
  List<ProfilesRow>? farmEmployeeList;
  // Stores action output result for [Backend Call - Query Rows] action in main_LightManegement widget.
  List<TowerViewRow>? towerIdentifierList4433;
  // Model for sideNav component.
  late SideNavModel sideNavModel;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController1 =
      FlutterFlowDataTableController<LatestLightStatusRow>();
  // Stores action output result for [Backend Call - Query Rows] action in Tab widget.
  List<LightingZonesRow>? lightingZoneCount7755;
  // State field(s) for PageView widget.
  PageController? pageViewController1;

  int get pageViewCurrentIndex1 => pageViewController1 != null &&
          pageViewController1!.hasClients &&
          pageViewController1!.page != null
      ? pageViewController1!.page!.round()
      : 0;
  // Stores action output result for [Backend Call - Query Rows] action in zoneActive widget.
  List<LightingZonesRow>? isActive7788;
  // Stores action output result for [Backend Call - Query Rows] action in Tab widget.
  List<LightingZonesRow>? lightingZoneCount7755Copy;
  // State field(s) for PageView widget.
  PageController? pageViewController2;

  int get pageViewCurrentIndex2 => pageViewController2 != null &&
          pageViewController2!.hasClients &&
          pageViewController2!.page != null
      ? pageViewController2!.page!.round()
      : 0;
  // State field(s) for zoneName widget.
  FocusNode? zoneNameFocusNode;
  TextEditingController? zoneNameTextController;
  String? Function(BuildContext, String?)? zoneNameTextControllerValidator;
  // State field(s) for selectController widget.
  String? selectControllerValue;
  FormFieldController<String>? selectControllerValueController;
  // State field(s) for selecRelay widget.
  int? selecRelayValue;
  FormFieldController<int>? selecRelayValueController;
  // State field(s) for isActive widget.
  bool? isActiveValue;
  FormFieldController<bool>? isActiveValueController;
  // State field(s) for description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionTextController;
  String? Function(BuildContext, String?)? descriptionTextControllerValidator;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController2 =
      FlutterFlowDataTableController<LightingFixtureSummaryWithVendorRow>();
  // State field(s) for waterTests widget.
  final waterTestsController =
      FlutterFlowDataTableController<LightZoneUsageSummaryRow>();

  @override
  void initState(BuildContext context) {
    sideNavModel = createModel(context, () => SideNavModel());
  }

  @override
  void dispose() {
    sideNavModel.dispose();
    tabBarController?.dispose();
    paginatedDataTableController1.dispose();
    zoneNameFocusNode?.dispose();
    zoneNameTextController?.dispose();

    descriptionFocusNode?.dispose();
    descriptionTextController?.dispose();

    paginatedDataTableController2.dispose();
    waterTestsController.dispose();
  }
}
