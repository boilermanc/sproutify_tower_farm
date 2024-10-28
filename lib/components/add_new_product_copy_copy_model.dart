import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'add_new_product_copy_copy_widget.dart' show AddNewProductCopyCopyWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddNewProductCopyCopyModel
    extends FlutterFlowModel<AddNewProductCopyCopyWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for productName widget.
  FocusNode? productNameFocusNode;
  TextEditingController? productNameTextController;
  String? Function(BuildContext, String?)? productNameTextControllerValidator;
  // State field(s) for category widget.
  String? categoryValue;
  FormFieldController<String>? categoryValueController;
  // State field(s) for type widget.
  String? typeValue;
  FormFieldController<String>? typeValueController;
  // State field(s) for vendor widget.
  String? vendorValue;
  FormFieldController<String>? vendorValueController;
  // State field(s) for costPerUnit widget.
  FocusNode? costPerUnitFocusNode;
  TextEditingController? costPerUnitTextController;
  String? Function(BuildContext, String?)? costPerUnitTextControllerValidator;
  // State field(s) for unit widget.
  String? unitValue;
  FormFieldController<String>? unitValueController;
  // State field(s) for notes widget.
  FocusNode? notesFocusNode;
  TextEditingController? notesTextController;
  String? Function(BuildContext, String?)? notesTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    productNameFocusNode?.dispose();
    productNameTextController?.dispose();

    costPerUnitFocusNode?.dispose();
    costPerUnitTextController?.dispose();

    notesFocusNode?.dispose();
    notesTextController?.dispose();
  }
}
