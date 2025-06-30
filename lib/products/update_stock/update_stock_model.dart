import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'update_stock_widget.dart' show UpdateStockWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class UpdateStockModel extends FlutterFlowModel<UpdateStockWidget> {
  ///  Local state fields for this component.

  double? newQuantity;

  ///  State fields for stateful widgets in this component.

  // State field(s) for quantityTextField widget.
  FocusNode? quantityTextFieldFocusNode;
  TextEditingController? quantityTextFieldTextController;
  String? Function(BuildContext, String?)?
      quantityTextFieldTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    quantityTextFieldFocusNode?.dispose();
    quantityTextFieldTextController?.dispose();
  }
}
