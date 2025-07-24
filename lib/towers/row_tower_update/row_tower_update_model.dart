import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'row_tower_update_widget.dart' show RowTowerUpdateWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RowTowerUpdateModel extends FlutterFlowModel<RowTowerUpdateWidget> {
  ///  Local state fields for this component.

  String? rowText;

  ///  State fields for stateful widgets in this component.

  // State field(s) for rowTextField widget.
  FocusNode? rowTextFieldFocusNode;
  TextEditingController? rowTextFieldTextController;
  String? Function(BuildContext, String?)? rowTextFieldTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    rowTextFieldFocusNode?.dispose();
    rowTextFieldTextController?.dispose();
  }
}
