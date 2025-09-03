import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import 'seed_lot_update_widget.dart' show SeedLotUpdateWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SeedLotUpdateModel extends FlutterFlowModel<SeedLotUpdateWidget> {
  ///  Local state fields for this component.

  int? quantitySeeds;

  double? costPerSeed;

  double? totalCost;

  double? newTotalValue;

  int? newTotalQuantity;

  double? itemCost;

  int? newTotalStock;

  DateTime? recievedDate;

  DateTime? expirationDate;

  DateTime? germinationDate;

  ///  State fields for stateful widgets in this component.

  // State field(s) for vendorDropDown widget.
  String? vendorDropDownValue;
  FormFieldController<String>? vendorDropDownValueController;
  // State field(s) for lotNumberTextField widget.
  FocusNode? lotNumberTextFieldFocusNode;
  TextEditingController? lotNumberTextFieldTextController;
  String? Function(BuildContext, String?)?
      lotNumberTextFieldTextControllerValidator;
  // State field(s) for seedIDTextField widget.
  FocusNode? seedIDTextFieldFocusNode;
  TextEditingController? seedIDTextFieldTextController;
  String? Function(BuildContext, String?)?
      seedIDTextFieldTextControllerValidator;
  // State field(s) for poTextField widget.
  FocusNode? poTextFieldFocusNode;
  TextEditingController? poTextFieldTextController;
  String? Function(BuildContext, String?)? poTextFieldTextControllerValidator;
  DateTime? datePicked1;
  // State field(s) for seedNameTextField widget.
  FocusNode? seedNameTextFieldFocusNode;
  TextEditingController? seedNameTextFieldTextController;
  String? Function(BuildContext, String?)?
      seedNameTextFieldTextControllerValidator;
  // State field(s) for quantityReceivedTextField widget.
  FocusNode? quantityReceivedTextFieldFocusNode;
  TextEditingController? quantityReceivedTextFieldTextController;
  String? Function(BuildContext, String?)?
      quantityReceivedTextFieldTextControllerValidator;
  // State field(s) for orderCostTextField widget.
  FocusNode? orderCostTextFieldFocusNode;
  TextEditingController? orderCostTextFieldTextController;
  String? Function(BuildContext, String?)?
      orderCostTextFieldTextControllerValidator;
  DateTime? datePicked2;
  // State field(s) for germRateTextField widget.
  FocusNode? germRateTextFieldFocusNode;
  TextEditingController? germRateTextFieldTextController;
  String? Function(BuildContext, String?)?
      germRateTextFieldTextControllerValidator;
  DateTime? datePicked3;
  // State field(s) for locationTextField widget.
  FocusNode? locationTextFieldFocusNode;
  TextEditingController? locationTextFieldTextController;
  String? Function(BuildContext, String?)?
      locationTextFieldTextControllerValidator;
  // State field(s) for storageTempTextField widget.
  FocusNode? storageTempTextFieldFocusNode;
  TextEditingController? storageTempTextFieldTextController;
  String? Function(BuildContext, String?)?
      storageTempTextFieldTextControllerValidator;
  // State field(s) for notesTextField widget.
  FocusNode? notesTextFieldFocusNode;
  TextEditingController? notesTextFieldTextController;
  String? Function(BuildContext, String?)?
      notesTextFieldTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    lotNumberTextFieldFocusNode?.dispose();
    lotNumberTextFieldTextController?.dispose();

    seedIDTextFieldFocusNode?.dispose();
    seedIDTextFieldTextController?.dispose();

    poTextFieldFocusNode?.dispose();
    poTextFieldTextController?.dispose();

    seedNameTextFieldFocusNode?.dispose();
    seedNameTextFieldTextController?.dispose();

    quantityReceivedTextFieldFocusNode?.dispose();
    quantityReceivedTextFieldTextController?.dispose();

    orderCostTextFieldFocusNode?.dispose();
    orderCostTextFieldTextController?.dispose();

    germRateTextFieldFocusNode?.dispose();
    germRateTextFieldTextController?.dispose();

    locationTextFieldFocusNode?.dispose();
    locationTextFieldTextController?.dispose();

    storageTempTextFieldFocusNode?.dispose();
    storageTempTextFieldTextController?.dispose();

    notesTextFieldFocusNode?.dispose();
    notesTextFieldTextController?.dispose();
  }
}
