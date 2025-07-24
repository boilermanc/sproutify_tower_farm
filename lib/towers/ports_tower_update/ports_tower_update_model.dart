import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'ports_tower_update_widget.dart' show PortsTowerUpdateWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PortsTowerUpdateModel extends FlutterFlowModel<PortsTowerUpdateWidget> {
  ///  Local state fields for this component.

  int? portText;

  ///  State fields for stateful widgets in this component.

  // State field(s) for portsTextField widget.
  FocusNode? portsTextFieldFocusNode;
  TextEditingController? portsTextFieldTextController;
  String? Function(BuildContext, String?)?
      portsTextFieldTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    portsTextFieldFocusNode?.dispose();
    portsTextFieldTextController?.dispose();
  }
}
