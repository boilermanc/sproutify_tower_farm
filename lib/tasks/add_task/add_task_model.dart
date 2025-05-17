import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/tasks/insert_task_role/insert_task_role_widget.dart';
import '/tasks/insert_task_staff/insert_task_staff_widget.dart';
import 'dart:ui';
import 'add_task_widget.dart' show AddTaskWidget;
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddTaskModel extends FlutterFlowModel<AddTaskWidget> {
  ///  Local state fields for this component.

  String? searchTerm;

  ///  State fields for stateful widgets in this component.

  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // State field(s) for searchTasks widget.
  FocusNode? searchTasksFocusNode;
  TextEditingController? searchTasksTextController;
  String? Function(BuildContext, String?)? searchTasksTextControllerValidator;
  DateTime? datePicked;
  // State field(s) for selectTower widget.
  int? selectTowerValue;
  FormFieldController<int>? selectTowerValueController;
  // State field(s) for notesInputField widget.
  FocusNode? notesInputFieldFocusNode;
  TextEditingController? notesInputFieldTextController;
  String? Function(BuildContext, String?)?
      notesInputFieldTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    searchTasksFocusNode?.dispose();
    searchTasksTextController?.dispose();

    notesInputFieldFocusNode?.dispose();
    notesInputFieldTextController?.dispose();
  }
}
