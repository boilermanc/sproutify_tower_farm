import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'update_vendor_widget.dart' show UpdateVendorWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class UpdateVendorModel extends FlutterFlowModel<UpdateVendorWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for vendorNameTextField widget.
  FocusNode? vendorNameTextFieldFocusNode;
  TextEditingController? vendorNameTextFieldTextController;
  String? Function(BuildContext, String?)?
      vendorNameTextFieldTextControllerValidator;
  // State field(s) for vendorPhoneTextField widget.
  FocusNode? vendorPhoneTextFieldFocusNode;
  TextEditingController? vendorPhoneTextFieldTextController;
  String? Function(BuildContext, String?)?
      vendorPhoneTextFieldTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    vendorNameTextFieldFocusNode?.dispose();
    vendorNameTextFieldTextController?.dispose();

    vendorPhoneTextFieldFocusNode?.dispose();
    vendorPhoneTextFieldTextController?.dispose();
  }
}
