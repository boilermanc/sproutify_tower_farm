import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'updateph_tower_widget.dart' show UpdatephTowerWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class UpdatephTowerModel extends FlutterFlowModel<UpdatephTowerWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for phTextField widget.
  FocusNode? phTextFieldFocusNode;
  TextEditingController? phTextFieldTextController;
  String? Function(BuildContext, String?)? phTextFieldTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    phTextFieldFocusNode?.dispose();
    phTextFieldTextController?.dispose();
  }
}
