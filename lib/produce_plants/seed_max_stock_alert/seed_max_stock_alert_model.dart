import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'seed_max_stock_alert_widget.dart' show SeedMaxStockAlertWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SeedMaxStockAlertModel extends FlutterFlowModel<SeedMaxStockAlertWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for maxStockTextField widget.
  FocusNode? maxStockTextFieldFocusNode;
  TextEditingController? maxStockTextFieldTextController;
  String? Function(BuildContext, String?)?
      maxStockTextFieldTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    maxStockTextFieldFocusNode?.dispose();
    maxStockTextFieldTextController?.dispose();
  }
}
