import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'spacer_quantity_assign_task_widget.dart'
    show SpacerQuantityAssignTaskWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SpacerQuantityAssignTaskModel
    extends FlutterFlowModel<SpacerQuantityAssignTaskWidget> {
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
