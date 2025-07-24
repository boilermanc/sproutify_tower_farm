import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'update_towers_plugin_widget.dart' show UpdateTowersPluginWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class UpdateTowersPluginModel
    extends FlutterFlowModel<UpdateTowersPluginWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for rowNumberField widget.
  FocusNode? rowNumberFieldFocusNode;
  TextEditingController? rowNumberFieldTextController;
  String? Function(BuildContext, String?)?
      rowNumberFieldTextControllerValidator;
  // State field(s) for towerPortField widget.
  FocusNode? towerPortFieldFocusNode;
  TextEditingController? towerPortFieldTextController;
  String? Function(BuildContext, String?)?
      towerPortFieldTextControllerValidator;
  // State field(s) for towerPostionField widget.
  FocusNode? towerPostionFieldFocusNode;
  TextEditingController? towerPostionFieldTextController;
  String? Function(BuildContext, String?)?
      towerPostionFieldTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    rowNumberFieldFocusNode?.dispose();
    rowNumberFieldTextController?.dispose();

    towerPortFieldFocusNode?.dispose();
    towerPortFieldTextController?.dispose();

    towerPostionFieldFocusNode?.dispose();
    towerPostionFieldTextController?.dispose();
  }
}
