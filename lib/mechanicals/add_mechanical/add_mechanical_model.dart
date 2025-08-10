import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import 'add_mechanical_widget.dart' show AddMechanicalWidget;
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddMechanicalModel extends FlutterFlowModel<AddMechanicalWidget> {
  ///  Local state fields for this component.

  String equipmentName = 'Name';

  int category = 1;

  int type = 1;

  String? model;

  String? zone;

  String? vendor;

  String? measurementSystem = '';

  ///  State fields for stateful widgets in this component.

  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // State field(s) for equipmentName widget.
  FocusNode? equipmentNameFocusNode;
  TextEditingController? equipmentNameTextController;
  String? Function(BuildContext, String?)? equipmentNameTextControllerValidator;
  // State field(s) for categoryDropdown widget.
  int? categoryDropdownValue;
  FormFieldController<int>? categoryDropdownValueController;
  // State field(s) for typeDropdown widget.
  int? typeDropdownValue;
  FormFieldController<int>? typeDropdownValueController;
  // State field(s) for model widget.
  FocusNode? modelFocusNode;
  TextEditingController? modelTextController;
  String? Function(BuildContext, String?)? modelTextControllerValidator;
  // State field(s) for zoneDropdown widget.
  String? zoneDropdownValue;
  FormFieldController<String>? zoneDropdownValueController;
  // State field(s) for vendorDropdown widget.
  String? vendorDropdownValue;
  FormFieldController<String>? vendorDropdownValueController;
  // State field(s) for measurmentSystem widget.
  String? measurmentSystemValue;
  FormFieldController<String>? measurmentSystemValueController;
  // State field(s) for fueTypeDropdown widget.
  String? fueTypeDropdownValue1;
  FormFieldController<String>? fueTypeDropdownValueController1;
  // State field(s) for btuRating widget.
  FocusNode? btuRatingFocusNode1;
  TextEditingController? btuRatingTextController1;
  String? Function(BuildContext, String?)? btuRatingTextController1Validator;
  // State field(s) for fueTypeDropdown widget.
  String? fueTypeDropdownValue2;
  FormFieldController<String>? fueTypeDropdownValueController2;
  // State field(s) for btuRating widget.
  FocusNode? btuRatingFocusNode2;
  TextEditingController? btuRatingTextController2;
  String? Function(BuildContext, String?)? btuRatingTextController2Validator;
  // State field(s) for fueTypeDropdown widget.
  String? fueTypeDropdownValue3;
  FormFieldController<String>? fueTypeDropdownValueController3;
  // State field(s) for btuRating widget.
  FocusNode? btuRatingFocusNode3;
  TextEditingController? btuRatingTextController3;
  String? Function(BuildContext, String?)? btuRatingTextController3Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController6;
  String? Function(BuildContext, String?)? textController6Validator;
  // State field(s) for controllerDropDown widget.
  String? controllerDropDownValue;
  FormFieldController<String>? controllerDropDownValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    equipmentNameFocusNode?.dispose();
    equipmentNameTextController?.dispose();

    modelFocusNode?.dispose();
    modelTextController?.dispose();

    btuRatingFocusNode1?.dispose();
    btuRatingTextController1?.dispose();

    btuRatingFocusNode2?.dispose();
    btuRatingTextController2?.dispose();

    btuRatingFocusNode3?.dispose();
    btuRatingTextController3?.dispose();

    textFieldFocusNode?.dispose();
    textController6?.dispose();
  }
}
