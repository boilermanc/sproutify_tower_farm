import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import 'add_farm_controller_widget.dart' show AddFarmControllerWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddFarmControllerModel extends FlutterFlowModel<AddFarmControllerWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for controllerModel widget.
  String? controllerModelValue;
  FormFieldController<String>? controllerModelValueController;
  // State field(s) for controllerName widget.
  FocusNode? controllerNameFocusNode;
  TextEditingController? controllerNameTextController;
  String? Function(BuildContext, String?)?
      controllerNameTextControllerValidator;
  // State field(s) for controllerLocation widget.
  FocusNode? controllerLocationFocusNode;
  TextEditingController? controllerLocationTextController;
  String? Function(BuildContext, String?)?
      controllerLocationTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    controllerNameFocusNode?.dispose();
    controllerNameTextController?.dispose();

    controllerLocationFocusNode?.dispose();
    controllerLocationTextController?.dispose();
  }
}
