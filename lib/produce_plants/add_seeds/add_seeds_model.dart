import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import 'add_seeds_widget.dart' show AddSeedsWidget;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddSeedsModel extends FlutterFlowModel<AddSeedsWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for quantityAdded widget.
  FocusNode? quantityAddedFocusNode;
  TextEditingController? quantityAddedTextController;
  String? Function(BuildContext, String?)? quantityAddedTextControllerValidator;
  // State field(s) for quantityOnHand widget.
  FocusNode? quantityOnHandFocusNode;
  TextEditingController? quantityOnHandTextController;
  String? Function(BuildContext, String?)?
      quantityOnHandTextControllerValidator;
  // State field(s) for totalCost widget.
  FocusNode? totalCostFocusNode;
  TextEditingController? totalCostTextController;
  String? Function(BuildContext, String?)? totalCostTextControllerValidator;
  // State field(s) for costPerUnit widget.
  FocusNode? costPerUnitFocusNode;
  TextEditingController? costPerUnitTextController;
  String? Function(BuildContext, String?)? costPerUnitTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    quantityAddedFocusNode?.dispose();
    quantityAddedTextController?.dispose();

    quantityOnHandFocusNode?.dispose();
    quantityOnHandTextController?.dispose();

    totalCostFocusNode?.dispose();
    totalCostTextController?.dispose();

    costPerUnitFocusNode?.dispose();
    costPerUnitTextController?.dispose();
  }
}
