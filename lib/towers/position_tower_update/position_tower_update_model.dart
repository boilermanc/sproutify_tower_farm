import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'position_tower_update_widget.dart' show PositionTowerUpdateWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PositionTowerUpdateModel
    extends FlutterFlowModel<PositionTowerUpdateWidget> {
  ///  Local state fields for this component.

  int? positionText;

  ///  State fields for stateful widgets in this component.

  // State field(s) for positionTextField widget.
  FocusNode? positionTextFieldFocusNode;
  TextEditingController? positionTextFieldTextController;
  String? Function(BuildContext, String?)?
      positionTextFieldTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    positionTextFieldFocusNode?.dispose();
    positionTextFieldTextController?.dispose();
  }
}
