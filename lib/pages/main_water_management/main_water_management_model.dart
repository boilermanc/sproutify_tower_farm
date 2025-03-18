import '';
import '/backend/supabase/supabase.dart';
import '/components/side_nav_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/sensors/no_water_sensor/no_water_sensor_widget.dart';
import '/water/add_water_test/add_water_test_widget.dart';
import '/water/no_water_quality_test/no_water_quality_test_widget.dart';
import 'dart:math';
import 'dart:ui';
import 'main_water_management_widget.dart' show MainWaterManagementWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MainWaterManagementModel
    extends FlutterFlowModel<MainWaterManagementWidget> {
  ///  Local state fields for this page.

  int selectedPage = 6;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Query Rows] action in main_waterManagement widget.
  List<ProfilesRow>? farmEmployeeList;
  // Model for sideNav component.
  late SideNavModel sideNavModel;
  // State field(s) for waterUsage widget.
  final waterUsageController =
      FlutterFlowDataTableController<WaterFlowAggregationRow>();
  // State field(s) for waterQuality widget.
  final waterQualityController =
      FlutterFlowDataTableController<WaterQualityTestDetailsRow>();

  @override
  void initState(BuildContext context) {
    sideNavModel = createModel(context, () => SideNavModel());
  }

  @override
  void dispose() {
    sideNavModel.dispose();
    waterUsageController.dispose();
    waterQualityController.dispose();
  }
}
