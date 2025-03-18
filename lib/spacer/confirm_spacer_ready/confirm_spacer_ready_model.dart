import '';
import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'confirm_spacer_ready_widget.dart' show ConfirmSpacerReadyWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ConfirmSpacerReadyModel
    extends FlutterFlowModel<ConfirmSpacerReadyWidget> {
  ///  Local state fields for this component.

  int? actionID;

  ///  State fields for stateful widgets in this component.

  // State field(s) for spacerQuantity widget.
  FocusNode? spacerQuantityFocusNode;
  TextEditingController? spacerQuantityTextController;
  String? Function(BuildContext, String?)?
      spacerQuantityTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    spacerQuantityFocusNode?.dispose();
    spacerQuantityTextController?.dispose();
  }
}
