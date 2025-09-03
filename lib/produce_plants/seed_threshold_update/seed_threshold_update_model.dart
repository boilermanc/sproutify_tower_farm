import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import 'seed_threshold_update_widget.dart' show SeedThresholdUpdateWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SeedThresholdUpdateModel
    extends FlutterFlowModel<SeedThresholdUpdateWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for lowStockTextField widget.
  FocusNode? lowStockTextFieldFocusNode;
  TextEditingController? lowStockTextFieldTextController;
  String? Function(BuildContext, String?)?
      lowStockTextFieldTextControllerValidator;
  // State field(s) for reorderStockTextField widget.
  FocusNode? reorderStockTextFieldFocusNode;
  TextEditingController? reorderStockTextFieldTextController;
  String? Function(BuildContext, String?)?
      reorderStockTextFieldTextControllerValidator;
  // State field(s) for maxStockTextField widget.
  FocusNode? maxStockTextFieldFocusNode;
  TextEditingController? maxStockTextFieldTextController;
  String? Function(BuildContext, String?)?
      maxStockTextFieldTextControllerValidator;
  // State field(s) for vendorDropDown widget.
  String? vendorDropDownValue;
  FormFieldController<String>? vendorDropDownValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    lowStockTextFieldFocusNode?.dispose();
    lowStockTextFieldTextController?.dispose();

    reorderStockTextFieldFocusNode?.dispose();
    reorderStockTextFieldTextController?.dispose();

    maxStockTextFieldFocusNode?.dispose();
    maxStockTextFieldTextController?.dispose();
  }
}
