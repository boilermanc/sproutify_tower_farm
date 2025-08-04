import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import 'add_vendor_widget.dart' show AddVendorWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class AddVendorModel extends FlutterFlowModel<AddVendorWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for vendorName widget.
  FocusNode? vendorNameFocusNode;
  TextEditingController? vendorNameTextController;
  String? Function(BuildContext, String?)? vendorNameTextControllerValidator;
  // State field(s) for mainContact widget.
  FocusNode? mainContactFocusNode;
  TextEditingController? mainContactTextController;
  String? Function(BuildContext, String?)? mainContactTextControllerValidator;
  // State field(s) for vendorPhone widget.
  FocusNode? vendorPhoneFocusNode;
  TextEditingController? vendorPhoneTextController;
  late MaskTextInputFormatter vendorPhoneMask;
  String? Function(BuildContext, String?)? vendorPhoneTextControllerValidator;
  // State field(s) for vendorEmail widget.
  FocusNode? vendorEmailFocusNode;
  TextEditingController? vendorEmailTextController;
  String? Function(BuildContext, String?)? vendorEmailTextControllerValidator;
  // State field(s) for vendorNotes widget.
  FocusNode? vendorNotesFocusNode;
  TextEditingController? vendorNotesTextController;
  String? Function(BuildContext, String?)? vendorNotesTextControllerValidator;
  // State field(s) for vendorType widget.
  String? vendorTypeValue;
  FormFieldController<String>? vendorTypeValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    vendorNameFocusNode?.dispose();
    vendorNameTextController?.dispose();

    mainContactFocusNode?.dispose();
    mainContactTextController?.dispose();

    vendorPhoneFocusNode?.dispose();
    vendorPhoneTextController?.dispose();

    vendorEmailFocusNode?.dispose();
    vendorEmailTextController?.dispose();

    vendorNotesFocusNode?.dispose();
    vendorNotesTextController?.dispose();
  }
}
