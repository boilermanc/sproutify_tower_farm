import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'update_e_c_tower_widget.dart' show UpdateECTowerWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class UpdateECTowerModel extends FlutterFlowModel<UpdateECTowerWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for ecTextField widget.
  FocusNode? ecTextFieldFocusNode;
  TextEditingController? ecTextFieldTextController;
  String? Function(BuildContext, String?)? ecTextFieldTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    ecTextFieldFocusNode?.dispose();
    ecTextFieldTextController?.dispose();
  }
}
