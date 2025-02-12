import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import 'confirm_tower_waste_widget.dart' show ConfirmTowerWasteWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ConfirmTowerWasteModel extends FlutterFlowModel<ConfirmTowerWasteWidget> {
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
  // Stores action output result for [Backend Call - Insert Row] action in updateWaste widget.
  ActionsRow? actionResponse0022;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    wasteQuantityFocusNode?.dispose();
    wasteQuantityTextController?.dispose();
  }
}
