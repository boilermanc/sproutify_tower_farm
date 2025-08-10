import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import 'seed_lot_update_copy_widget.dart' show SeedLotUpdateCopyWidget;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SeedLotUpdateCopyModel extends FlutterFlowModel<SeedLotUpdateCopyWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for vendorDropDown widget.
  String? vendorDropDownValue;
  FormFieldController<String>? vendorDropDownValueController;
  // State field(s) for lotBatchTextField widget.
  FocusNode? lotBatchTextFieldFocusNode;
  TextEditingController? lotBatchTextFieldTextController;
  String? Function(BuildContext, String?)?
      lotBatchTextFieldTextControllerValidator;
  // State field(s) for poTextField widget.
  FocusNode? poTextFieldFocusNode;
  TextEditingController? poTextFieldTextController;
  String? Function(BuildContext, String?)? poTextFieldTextControllerValidator;
  // State field(s) for dateTextField widget.
  FocusNode? dateTextFieldFocusNode1;
  TextEditingController? dateTextFieldTextController1;
  String? Function(BuildContext, String?)?
      dateTextFieldTextController1Validator;
  // State field(s) for quantityTextField widget.
  FocusNode? quantityTextFieldFocusNode;
  TextEditingController? quantityTextFieldTextController;
  String? Function(BuildContext, String?)?
      quantityTextFieldTextControllerValidator;
  // State field(s) for costTextField widget.
  FocusNode? costTextFieldFocusNode;
  TextEditingController? costTextFieldTextController;
  String? Function(BuildContext, String?)? costTextFieldTextControllerValidator;
  // State field(s) for expirationDateTextField widget.
  FocusNode? expirationDateTextFieldFocusNode;
  TextEditingController? expirationDateTextFieldTextController;
  String? Function(BuildContext, String?)?
      expirationDateTextFieldTextControllerValidator;
  // State field(s) for germinationTextField widget.
  FocusNode? germinationTextFieldFocusNode;
  TextEditingController? germinationTextFieldTextController;
  String? Function(BuildContext, String?)?
      germinationTextFieldTextControllerValidator;
  // State field(s) for storageLocationTextField widget.
  FocusNode? storageLocationTextFieldFocusNode;
  TextEditingController? storageLocationTextFieldTextController;
  String? Function(BuildContext, String?)?
      storageLocationTextFieldTextControllerValidator;
  // State field(s) for dateTextField widget.
  FocusNode? dateTextFieldFocusNode2;
  TextEditingController? dateTextFieldTextController2;
  String? Function(BuildContext, String?)?
      dateTextFieldTextController2Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController10;
  String? Function(BuildContext, String?)? textController10Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    lotBatchTextFieldFocusNode?.dispose();
    lotBatchTextFieldTextController?.dispose();

    poTextFieldFocusNode?.dispose();
    poTextFieldTextController?.dispose();

    dateTextFieldFocusNode1?.dispose();
    dateTextFieldTextController1?.dispose();

    quantityTextFieldFocusNode?.dispose();
    quantityTextFieldTextController?.dispose();

    costTextFieldFocusNode?.dispose();
    costTextFieldTextController?.dispose();

    expirationDateTextFieldFocusNode?.dispose();
    expirationDateTextFieldTextController?.dispose();

    germinationTextFieldFocusNode?.dispose();
    germinationTextFieldTextController?.dispose();

    storageLocationTextFieldFocusNode?.dispose();
    storageLocationTextFieldTextController?.dispose();

    dateTextFieldFocusNode2?.dispose();
    dateTextFieldTextController2?.dispose();

    textFieldFocusNode?.dispose();
    textController10?.dispose();
  }
}
