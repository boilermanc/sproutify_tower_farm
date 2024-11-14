import '/backend/supabase/supabase.dart';
import '/components/add_sensor_widget.dart';
import '/components/no_sensors_widget.dart';
import '/components/side_nav_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'main_sensors_widget.dart' show MainSensorsWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MainSensorsModel extends FlutterFlowModel<MainSensorsWidget> {
  ///  Local state fields for this page.

  int selectedPage = 7;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Query Rows] action in main_Sensors widget.
  List<ProfilesRow>? farmEmployeeList;
  // Model for sideNav component.
  late SideNavModel sideNavModel;
  // State field(s) for waterTests widget.
  final waterTestsController = FlutterFlowDataTableController<SensorsRow>();

  @override
  void initState(BuildContext context) {
    sideNavModel = createModel(context, () => SideNavModel());
  }

  @override
  void dispose() {
    sideNavModel.dispose();
    waterTestsController.dispose();
  }
}
