import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'pest_schedule_container_widget.dart' show PestScheduleContainerWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PestScheduleContainerModel
    extends FlutterFlowModel<PestScheduleContainerWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for ipdmDataTable widget.
  final ipdmDataTableController =
      FlutterFlowDataTableController<IpdmScheduleRow>();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    ipdmDataTableController.dispose();
  }
}
