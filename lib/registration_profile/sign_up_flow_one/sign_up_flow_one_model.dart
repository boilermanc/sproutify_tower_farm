import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import 'sign_up_flow_one_widget.dart' show SignUpFlowOneWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SignUpFlowOneModel extends FlutterFlowModel<SignUpFlowOneWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for farmName widget.
  FocusNode? farmNameFocusNode;
  TextEditingController? farmNameTextController;
  String? Function(BuildContext, String?)? farmNameTextControllerValidator;
  // State field(s) for farmAddress widget.
  FocusNode? farmAddressFocusNode;
  TextEditingController? farmAddressTextController;
  String? Function(BuildContext, String?)? farmAddressTextControllerValidator;
  // State field(s) for farmCity widget.
  FocusNode? farmCityFocusNode;
  TextEditingController? farmCityTextController;
  String? Function(BuildContext, String?)? farmCityTextControllerValidator;
  // State field(s) for farmState widget.
  FocusNode? farmStateFocusNode;
  TextEditingController? farmStateTextController;
  String? Function(BuildContext, String?)? farmStateTextControllerValidator;
  // State field(s) for farmPostal widget.
  FocusNode? farmPostalFocusNode;
  TextEditingController? farmPostalTextController;
  String? Function(BuildContext, String?)? farmPostalTextControllerValidator;
  // State field(s) for farmCountry widget.
  FocusNode? farmCountryFocusNode;
  TextEditingController? farmCountryTextController;
  String? Function(BuildContext, String?)? farmCountryTextControllerValidator;
  // State field(s) for farmNumberEmployees widget.
  String? farmNumberEmployeesValue;
  FormFieldController<String>? farmNumberEmployeesValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    farmNameFocusNode?.dispose();
    farmNameTextController?.dispose();

    farmAddressFocusNode?.dispose();
    farmAddressTextController?.dispose();

    farmCityFocusNode?.dispose();
    farmCityTextController?.dispose();

    farmStateFocusNode?.dispose();
    farmStateTextController?.dispose();

    farmPostalFocusNode?.dispose();
    farmPostalTextController?.dispose();

    farmCountryFocusNode?.dispose();
    farmCountryTextController?.dispose();
  }
}
