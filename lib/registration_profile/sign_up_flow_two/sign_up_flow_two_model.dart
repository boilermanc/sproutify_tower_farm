import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_checkbox_group.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import '/index.dart';
import 'sign_up_flow_two_widget.dart' show SignUpFlowTwoWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SignUpFlowTwoModel extends FlutterFlowModel<SignUpFlowTwoWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (GetFarmData)] action in signUpFlowTwo widget.
  ApiCallResponse? apiResultfvi;
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
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    towerNumberFocusNode?.dispose();
    towerNumberTextController?.dispose();
  }

  /// Additional helper methods.
  String? get radioButtonValue => radioButtonValueController?.value;
}
