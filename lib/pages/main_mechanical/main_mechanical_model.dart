import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/components/side_nav_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/lighting/add_farm_controller/add_farm_controller_widget.dart';
import '/mechanicals/add_mechanical/add_mechanical_widget.dart';
import 'dart:math';
import 'dart:ui';
import 'main_mechanical_widget.dart' show MainMechanicalWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class MainMechanicalModel extends FlutterFlowModel<MainMechanicalWidget> {
  ///  Local state fields for this page.

  int selectedPage = 2;

  List<TowerSelectionStruct> towers = [];
  void addToTowers(TowerSelectionStruct item) => towers.add(item);
  void removeFromTowers(TowerSelectionStruct item) => towers.remove(item);
  void removeAtIndexFromTowers(int index) => towers.removeAt(index);
  void insertAtIndexInTowers(int index, TowerSelectionStruct item) =>
      towers.insert(index, item);
  void updateTowersAtIndex(
          int index, Function(TowerSelectionStruct) updateFn) =>
      towers[index] = updateFn(towers[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Query Rows] action in main_Mechanical widget.
  List<ProfilesRow>? farmEmployeeList;
  // Model for sideNav component.
  late SideNavModel sideNavModel;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<MechanicalDashboardViewRow>();

  @override
  void initState(BuildContext context) {
    sideNavModel = createModel(context, () => SideNavModel());
  }

  @override
  void dispose() {
    sideNavModel.dispose();
    paginatedDataTableController.dispose();
  }
}
