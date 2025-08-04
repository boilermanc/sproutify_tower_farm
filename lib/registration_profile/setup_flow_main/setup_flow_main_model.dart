import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_checkbox_group.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/registration_profile/exit_farm_setup/exit_farm_setup_widget.dart';
import '/registration_profile/initial_tower_setup/initial_tower_setup_widget.dart';
import 'dart:ui';
import '/index.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'setup_flow_main_widget.dart' show SetupFlowMainWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class SetupFlowMainModel extends FlutterFlowModel<SetupFlowMainWidget> {
  ///  Local state fields for this component.

  int? rowNumber;

  List<int> rowIndices = [];
  void addToRowIndices(int item) => rowIndices.add(item);
  void removeFromRowIndices(int item) => rowIndices.remove(item);
  void removeAtIndexFromRowIndices(int index) => rowIndices.removeAt(index);
  void insertAtIndexInRowIndices(int index, int item) =>
      rowIndices.insert(index, item);
  void updateRowIndicesAtIndex(int index, Function(int) updateFn) =>
      rowIndices[index] = updateFn(rowIndices[index]);

  ///  State fields for stateful widgets in this component.

  final formKey4 = GlobalKey<FormState>();
  final formKey5 = GlobalKey<FormState>();
  final formKey3 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  final formKey7 = GlobalKey<FormState>();
  final formKey6 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
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
  String? _farmNameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Enter your farm name... is required';
    }

    return null;
  }

  // State field(s) for farmAddress widget.
  FocusNode? farmAddressFocusNode;
  TextEditingController? farmAddressTextController;
  String? Function(BuildContext, String?)? farmAddressTextControllerValidator;
  String? _farmAddressTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Street Address... is required';
    }

    return null;
  }

  // State field(s) for farmCity widget.
  FocusNode? farmCityFocusNode;
  TextEditingController? farmCityTextController;
  String? Function(BuildContext, String?)? farmCityTextControllerValidator;
  String? _farmCityTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return ' City... is required';
    }

    return null;
  }

  // State field(s) for stateDropDown widget.
  String? stateDropDownValue;
  FormFieldController<String>? stateDropDownValueController;
  // State field(s) for farmPostal widget.
  FocusNode? farmPostalFocusNode;
  TextEditingController? farmPostalTextController;
  String? Function(BuildContext, String?)? farmPostalTextControllerValidator;
  String? _farmPostalTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return ' Postal Code... is required';
    }

    return null;
  }

  // State field(s) for countryDropDown widget.
  String? countryDropDownValue;
  FormFieldController<String>? countryDropDownValueController;
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
  String? _towerNumberTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Number of towers is required';
    }

    return null;
  }

  // State field(s) for supplementalLightingDropDown widget.
  bool? supplementalLightingDropDownValue;
  FormFieldController<bool>? supplementalLightingDropDownValueController;
  // State field(s) for howWillYouUseThisTextField widget.
  FocusNode? howWillYouUseThisTextFieldFocusNode;
  TextEditingController? howWillYouUseThisTextFieldTextController;
  String? Function(BuildContext, String?)?
      howWillYouUseThisTextFieldTextControllerValidator;
  // Stores action output result for [Backend Call - Insert Row] action in nextButton widget.
  FarmsRow? farmSetup3322;

  @override
  void initState(BuildContext context) {
    farmNameTextControllerValidator = _farmNameTextControllerValidator;
    farmAddressTextControllerValidator = _farmAddressTextControllerValidator;
    farmCityTextControllerValidator = _farmCityTextControllerValidator;
    farmPostalTextControllerValidator = _farmPostalTextControllerValidator;
    towerNumberTextControllerValidator = _towerNumberTextControllerValidator;
  }

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

    howWillYouUseThisTextFieldFocusNode?.dispose();
    howWillYouUseThisTextFieldTextController?.dispose();
  }
}
