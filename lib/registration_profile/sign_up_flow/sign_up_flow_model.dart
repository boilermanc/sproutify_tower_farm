import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_checkbox_group.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import '/index.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'sign_up_flow_widget.dart' show SignUpFlowWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SignUpFlowModel extends FlutterFlowModel<SignUpFlowWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
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
  // State field(s) for stateDropDown widget.
  int? stateDropDownValue;
  FormFieldController<int>? stateDropDownValueController;
  // State field(s) for farmPostal widget.
  FocusNode? farmPostalFocusNode;
  TextEditingController? farmPostalTextController;
  String? Function(BuildContext, String?)? farmPostalTextControllerValidator;
  // State field(s) for countryDropDown widget.
  int? countryDropDownValue;
  FormFieldController<int>? countryDropDownValueController;
  // State field(s) for farmNumberEmployees widget.
  String? farmNumberEmployeesValue;
  FormFieldController<String>? farmNumberEmployeesValueController;
  // State field(s) for farmUnit widget.
  String? farmUnitValue;
  FormFieldController<String>? farmUnitValueController;
  // State field(s) for location widget.
  FormFieldController<List<String>>? locationValueController;
  List<String>? get locationValues => locationValueController?.value;
  set locationValues(List<String>? v) => locationValueController?.value = v;

  // State field(s) for towerNumber widget.
  FocusNode? towerNumberFocusNode;
  TextEditingController? towerNumberTextController;
  String? Function(BuildContext, String?)? towerNumberTextControllerValidator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController6;
  String? Function(BuildContext, String?)? textController6Validator;

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

    farmPostalFocusNode?.dispose();
    farmPostalTextController?.dispose();

    towerNumberFocusNode?.dispose();
    towerNumberTextController?.dispose();

    textFieldFocusNode?.dispose();
    textController6?.dispose();
  }
}
