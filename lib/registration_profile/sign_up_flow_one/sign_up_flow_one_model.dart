import '/components/setup_flow_one_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'sign_up_flow_one_widget.dart' show SignUpFlowOneWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SignUpFlowOneModel extends FlutterFlowModel<SignUpFlowOneWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for setupFlowOne component.
  late SetupFlowOneModel setupFlowOneModel;

  @override
  void initState(BuildContext context) {
    setupFlowOneModel = createModel(context, () => SetupFlowOneModel());
  }

  @override
  void dispose() {
    setupFlowOneModel.dispose();
  }
}
