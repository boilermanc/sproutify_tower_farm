import '';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import 'confirm_tower_waste_no_button_widget.dart'
    show ConfirmTowerWasteNoButtonWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ConfirmTowerWasteNoButtonModel
    extends FlutterFlowModel<ConfirmTowerWasteNoButtonWidget> {
  ///  Local state fields for this component.

  int? actionID;

  ///  State fields for stateful widgets in this component.

  // State field(s) for wasteQuantity widget.
  FocusNode? wasteQuantityFocusNode;
  TextEditingController? wasteQuantityTextController;
  String? Function(BuildContext, String?)? wasteQuantityTextControllerValidator;
  // State field(s) for wasteReason widget.
  int? wasteReasonValue;
  FormFieldController<int>? wasteReasonValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    wasteQuantityFocusNode?.dispose();
    wasteQuantityTextController?.dispose();
  }
}
