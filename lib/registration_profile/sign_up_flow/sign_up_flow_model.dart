import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/registration_profile/setup_flow_main/setup_flow_main_widget.dart';
import 'sign_up_flow_widget.dart' show SignUpFlowWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SignUpFlowModel extends FlutterFlowModel<SignUpFlowWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for setupFlowMain component.
  late SetupFlowMainModel setupFlowMainModel;

  @override
  void initState(BuildContext context) {
    setupFlowMainModel = createModel(context, () => SetupFlowMainModel());
  }

  @override
  void dispose() {
    setupFlowMainModel.dispose();
  }
}
