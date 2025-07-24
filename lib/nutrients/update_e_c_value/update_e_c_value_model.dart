import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'update_e_c_value_widget.dart' show UpdateECValueWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class UpdateECValueModel extends FlutterFlowModel<UpdateECValueWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for ecUpdateField widget.
  FocusNode? ecUpdateFieldFocusNode;
  TextEditingController? ecUpdateFieldTextController;
  String? Function(BuildContext, String?)? ecUpdateFieldTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    ecUpdateFieldFocusNode?.dispose();
    ecUpdateFieldTextController?.dispose();
  }
}
