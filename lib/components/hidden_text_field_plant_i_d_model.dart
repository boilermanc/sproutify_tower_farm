import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'hidden_text_field_plant_i_d_widget.dart'
    show HiddenTextFieldPlantIDWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HiddenTextFieldPlantIDModel
    extends FlutterFlowModel<HiddenTextFieldPlantIDWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for plantID widget.
  FocusNode? plantIDFocusNode;
  TextEditingController? plantIDTextController;
  String? Function(BuildContext, String?)? plantIDTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    plantIDFocusNode?.dispose();
    plantIDTextController?.dispose();
  }
}
