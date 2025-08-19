import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'spacer_quantiry_text_field_widget.dart'
    show SpacerQuantiryTextFieldWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SpacerQuantiryTextFieldModel
    extends FlutterFlowModel<SpacerQuantiryTextFieldWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for quanityTextField widget.
  FocusNode? quanityTextFieldFocusNode;
  TextEditingController? quanityTextFieldTextController;
  String? Function(BuildContext, String?)?
      quanityTextFieldTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    quanityTextFieldFocusNode?.dispose();
    quanityTextFieldTextController?.dispose();
  }
}
