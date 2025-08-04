import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/pests/add_pest_product_details/add_pest_product_details_widget.dart';
import '/produce_plants/add_vendor/add_vendor_widget.dart';
import 'dart:ui';
import 'add_new_product_widget.dart' show AddNewProductWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class AddNewProductModel extends FlutterFlowModel<AddNewProductWidget> {
  ///  Local state fields for this component.

  String categorySelected = '0';

  String typeSelected = 'none';

  ///  State fields for stateful widgets in this component.

  // State field(s) for productName widget.
  FocusNode? productNameFocusNode1;
  TextEditingController? productNameTextController1;
  String? Function(BuildContext, String?)? productNameTextController1Validator;
  // Stores action output result for [Backend Call - Query Rows] action in productName widget.
  List<ProductItemsRow>? checkProductName2299;
  // State field(s) for category widget.
  String? categoryValue;
  FormFieldController<String>? categoryValueController;
  // State field(s) for type widget.
  String? typeValue;
  FormFieldController<String>? typeValueController;
  // State field(s) for vendors widget.
  String? vendorsValue;
  FormFieldController<String>? vendorsValueController;
  // State field(s) for costPerUnit widget.
  FocusNode? costPerUnitFocusNode;
  TextEditingController? costPerUnitTextController;
  String? Function(BuildContext, String?)? costPerUnitTextControllerValidator;
  // State field(s) for unit widget.
  String? unitValue;
  FormFieldController<String>? unitValueController;
  // State field(s) for initialQuanity widget.
  FocusNode? initialQuanityFocusNode;
  TextEditingController? initialQuanityTextController;
  String? Function(BuildContext, String?)?
      initialQuanityTextControllerValidator;
  // State field(s) for minimumQuantity widget.
  FocusNode? minimumQuantityFocusNode;
  TextEditingController? minimumQuantityTextController;
  String? Function(BuildContext, String?)?
      minimumQuantityTextControllerValidator;
  // State field(s) for productName widget.
  FocusNode? productNameFocusNode2;
  TextEditingController? productNameTextController2;
  String? Function(BuildContext, String?)? productNameTextController2Validator;
  // Stores action output result for [Backend Call - Insert Row] action in pestDetail widget.
  ProductItemsRow? addedProdcut3939;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    productNameFocusNode1?.dispose();
    productNameTextController1?.dispose();

    costPerUnitFocusNode?.dispose();
    costPerUnitTextController?.dispose();

    initialQuanityFocusNode?.dispose();
    initialQuanityTextController?.dispose();

    minimumQuantityFocusNode?.dispose();
    minimumQuantityTextController?.dispose();

    productNameFocusNode2?.dispose();
    productNameTextController2?.dispose();
  }
}
