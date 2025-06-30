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

  // State field(s) for custmomerName widget.
  FocusNode? custmomerNameFocusNode;
  TextEditingController? custmomerNameTextController;
  String? Function(BuildContext, String?)? custmomerNameTextControllerValidator;
  // State field(s) for mainContact widget.
  FocusNode? mainContactFocusNode;
  TextEditingController? mainContactTextController;
  String? Function(BuildContext, String?)? mainContactTextControllerValidator;
  // State field(s) for customerPhone widget.
  FocusNode? customerPhoneFocusNode;
  TextEditingController? customerPhoneTextController;
  late MaskTextInputFormatter customerPhoneMask;
  String? Function(BuildContext, String?)? customerPhoneTextControllerValidator;
  // State field(s) for customerEmail widget.
  FocusNode? customerEmailFocusNode;
  TextEditingController? customerEmailTextController;
  String? Function(BuildContext, String?)? customerEmailTextControllerValidator;
  // State field(s) for customerStreet widget.
  FocusNode? customerStreetFocusNode;
  TextEditingController? customerStreetTextController;
  String? Function(BuildContext, String?)?
      customerStreetTextControllerValidator;
  // State field(s) for customerCity widget.
  FocusNode? customerCityFocusNode;
  TextEditingController? customerCityTextController;
  String? Function(BuildContext, String?)? customerCityTextControllerValidator;
  // State field(s) for selectState widget.
  String? selectStateValue;
  FormFieldController<String>? selectStateValueController;
  // State field(s) for customerZip widget.
  FocusNode? customerZipFocusNode;
  TextEditingController? customerZipTextController;
  String? Function(BuildContext, String?)? customerZipTextControllerValidator;
  // State field(s) for selectCountry widget.
  String? selectCountryValue;
  FormFieldController<String>? selectCountryValueController;
  // State field(s) for customerNotes widget.
  FocusNode? customerNotesFocusNode;
  TextEditingController? customerNotesTextController;
  String? Function(BuildContext, String?)? customerNotesTextControllerValidator;
  // State field(s) for customerType widget.
  String? customerTypeValue;
  FormFieldController<String>? customerTypeValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    custmomerNameFocusNode?.dispose();
    custmomerNameTextController?.dispose();

    mainContactFocusNode?.dispose();
    mainContactTextController?.dispose();

    customerPhoneFocusNode?.dispose();
    customerPhoneTextController?.dispose();

    customerEmailFocusNode?.dispose();
    customerEmailTextController?.dispose();

    customerStreetFocusNode?.dispose();
    customerStreetTextController?.dispose();

    customerCityFocusNode?.dispose();
    customerCityTextController?.dispose();

    customerZipFocusNode?.dispose();
    customerZipTextController?.dispose();

    customerNotesFocusNode?.dispose();
    customerNotesTextController?.dispose();
  }
}
