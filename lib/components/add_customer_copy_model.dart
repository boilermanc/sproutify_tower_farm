import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'add_customer_copy_widget.dart' show AddCustomerCopyWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddCustomerCopyModel extends FlutterFlowModel<AddCustomerCopyWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for productName widget.
  FocusNode? productNameFocusNode1;
  TextEditingController? productNameTextController1;
  String? Function(BuildContext, String?)? productNameTextController1Validator;
  // State field(s) for category widget.
  String? categoryValue;
  FormFieldController<String>? categoryValueController;
  // State field(s) for type widget.
  String? typeValue;
  FormFieldController<String>? typeValueController;
  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // State field(s) for productName widget.
  FocusNode? productNameFocusNode2;
  TextEditingController? productNameTextController2;
  String? Function(BuildContext, String?)? productNameTextController2Validator;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  // State field(s) for productName widget.
  FocusNode? productNameFocusNode3;
  TextEditingController? productNameTextController3;
  String? Function(BuildContext, String?)? productNameTextController3Validator;
  // State field(s) for productName widget.
  FocusNode? productNameFocusNode4;
  TextEditingController? productNameTextController4;
  String? Function(BuildContext, String?)? productNameTextController4Validator;
  // State field(s) for productName widget.
  FocusNode? productNameFocusNode5;
  TextEditingController? productNameTextController5;
  String? Function(BuildContext, String?)? productNameTextController5Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    productNameFocusNode1?.dispose();
    productNameTextController1?.dispose();

    productNameFocusNode2?.dispose();
    productNameTextController2?.dispose();

    productNameFocusNode3?.dispose();
    productNameTextController3?.dispose();

    productNameFocusNode4?.dispose();
    productNameTextController4?.dispose();

    productNameFocusNode5?.dispose();
    productNameTextController5?.dispose();
  }
}
