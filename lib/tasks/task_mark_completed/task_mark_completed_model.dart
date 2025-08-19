import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import 'task_mark_completed_widget.dart' show TaskMarkCompletedWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TaskMarkCompletedModel extends FlutterFlowModel<TaskMarkCompletedWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for completedByDropDown widget.
  String? completedByDropDownValue;
  FormFieldController<String>? completedByDropDownValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
