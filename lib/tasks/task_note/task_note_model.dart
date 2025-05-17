import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'task_note_widget.dart' show TaskNoteWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TaskNoteModel extends FlutterFlowModel<TaskNoteWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for taskNoteField widget.
  FocusNode? taskNoteFieldFocusNode;
  TextEditingController? taskNoteFieldTextController;
  String? Function(BuildContext, String?)? taskNoteFieldTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    taskNoteFieldFocusNode?.dispose();
    taskNoteFieldTextController?.dispose();
  }
}
