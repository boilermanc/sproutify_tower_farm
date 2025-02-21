import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_checkbox_group.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import '/index.dart';
import 'food_safety_planflow_widget.dart' show FoodSafetyPlanflowWidget;
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class FoodSafetyPlanflowModel
    extends FlutterFlowModel<FoodSafetyPlanflowWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
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
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    towerNumberFocusNode?.dispose();
    towerNumberTextController?.dispose();

    textFieldFocusNode?.dispose();
    textController2?.dispose();
  }
}
