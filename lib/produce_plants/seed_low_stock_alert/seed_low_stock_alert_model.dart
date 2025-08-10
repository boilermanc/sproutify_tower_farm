import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'seed_low_stock_alert_widget.dart' show SeedLowStockAlertWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SeedLowStockAlertModel extends FlutterFlowModel<SeedLowStockAlertWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for lowStockTextField widget.
  FocusNode? lowStockTextFieldFocusNode;
  TextEditingController? lowStockTextFieldTextController;
  String? Function(BuildContext, String?)?
      lowStockTextFieldTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    lowStockTextFieldFocusNode?.dispose();
    lowStockTextFieldTextController?.dispose();
  }
}
